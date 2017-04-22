@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/sub_categories') }}">Sub category</a> :
@endsection
@section("contentheader_description", $sub_category->$view_col)
@section("section", "Sub categories")
@section("section_url", url(config('laraadmin.adminRoute') . '/sub_categories'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Sub categories Edit : ".$sub_category->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($sub_category, ['route' => [config('laraadmin.adminRoute') . '.sub_categories.update', $sub_category->id ], 'method'=>'PUT', 'id' => 'sub_category-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'logo')
					@la_input($module, 'categorie')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/sub_categories') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#sub_category-edit-form").validate({
		
	});
});
</script>
@endpush
