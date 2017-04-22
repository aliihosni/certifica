@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/uploads') }}">Upload</a> :
@endsection
@section("contentheader_description", $upload->$view_col)
@section("section", "Uploads")
@section("section_url", url(config('laraadmin.adminRoute') . '/uploads'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Uploads Edit : ".$upload->$view_col)

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
				{!! Form::model($upload, ['route' => [config('laraadmin.adminRoute') . '.uploads.update', $upload->id ], 'method'=>'PUT', 'id' => 'upload-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'path')
					@la_input($module, 'extension')
					@la_input($module, 'caption')
					@la_input($module, 'user_id')
					@la_input($module, 'hash')
					@la_input($module, 'public')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/uploads') }}">Cancel</a></button>
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
	$("#upload-edit-form").validate({
		
	});
});
</script>
@endpush
