<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use DB;
use Validator;
use Datatables;
use Collective\Html\FormFacade as Form;
use Dwij\Laraadmin\Models\Module;
use Dwij\Laraadmin\Models\ModuleFields;

use App\Models\Ask_a_certification;

class Ask_a_certificationsController extends Controller
{
	public $show_action = true;
	public $view_col = 'certification';
	public $listing_cols = ['id', 'status', 'user', 'certification', 'sub_category', 'category'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() == 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Ask_a_certifications', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Ask_a_certifications', $this->listing_cols);
		}
	}
	
	/**
	 * Display a listing of the Ask_a_certifications.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Ask_a_certifications');
		
		if(Module::hasAccess($module->id)) {
			return View('la.ask_a_certifications.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new ask_a_certification.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created ask_a_certification in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Ask_a_certifications", "create")) {
		
			$rules = Module::validateRules("Ask_a_certifications", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Ask_a_certifications", $request);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.ask_a_certifications.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified ask_a_certification.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Ask_a_certifications", "view")) {
			
			$ask_a_certification = Ask_a_certification::find($id);
			if(isset($ask_a_certification->id)) {
				$module = Module::get('Ask_a_certifications');
				$module->row = $ask_a_certification;
				
				return view('la.ask_a_certifications.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('ask_a_certification', $ask_a_certification);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("ask_a_certification"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified ask_a_certification.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Ask_a_certifications", "edit")) {			
			$ask_a_certification = Ask_a_certification::find($id);
			if(isset($ask_a_certification->id)) {	
				$module = Module::get('Ask_a_certifications');
				
				$module->row = $ask_a_certification;
				
				return view('la.ask_a_certifications.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('ask_a_certification', $ask_a_certification);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("ask_a_certification"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified ask_a_certification in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Ask_a_certifications", "edit")) {
			
			$rules = Module::validateRules("Ask_a_certifications", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Ask_a_certifications", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.ask_a_certifications.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified ask_a_certification from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Ask_a_certifications", "delete")) {
			Ask_a_certification::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.ask_a_certifications.index');
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}
	
	/**
	 * Datatable Ajax fetch
	 *
	 * @return
	 */
	public function dtajax()
	{
		$values = DB::table('ask_a_certifications')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Ask_a_certifications');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				if($fields_popup[$col] != null && starts_with($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i][$j] = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i][$j]);
				}
				if($col == $this->view_col) {
					$data->data[$i][$j] = '<a href="'.url(config('laraadmin.adminRoute') . '/ask_a_certifications/'.$data->data[$i][0]).'">'.$data->data[$i][$j].'</a>';
				}
				// else if($col == "author") {
				//    $data->data[$i][$j];
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Ask_a_certifications", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/ask_a_certifications/'.$data->data[$i][0].'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Ask_a_certifications", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.ask_a_certifications.destroy', $data->data[$i][0]], 'method' => 'delete', 'style'=>'display:inline']);
					$output .= ' <button class="btn btn-danger btn-xs" type="submit"><i class="fa fa-times"></i></button>';
					$output .= Form::close();
				}
				$data->data[$i][] = (string)$output;
			}
		}
		$out->setData($data);
		return $out;
	}
}
