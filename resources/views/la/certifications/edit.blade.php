@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/certifications') }}">Certification</a> :
@endsection
@section("contentheader_description", $certification->$view_col)
@section("section", "Certifications")
@section("section_url", url(config('laraadmin.adminRoute') . '/certifications'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Certifications Edit : ".$certification->$view_col)

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
				{!! Form::model($certification, ['route' => [config('laraadmin.adminRoute') . '.certifications.update', $certification->id ], 'method'=>'PUT', 'id' => 'certification-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'logo')
					@la_input($module, 'sub_categories')
					@la_input($module, 'duration')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/certifications') }}">Cancel</a></button>
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
	$("#certification-edit-form").validate({
		
	});
});
</script>
@endpush
