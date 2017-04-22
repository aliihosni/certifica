@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/subjects') }}">Subject</a> :
@endsection
@section("contentheader_description", $subject->$view_col)
@section("section", "Subjects")
@section("section_url", url(config('laraadmin.adminRoute') . '/subjects'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Subjects Edit : ".$subject->$view_col)

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
				{!! Form::model($subject, ['route' => [config('laraadmin.adminRoute') . '.subjects.update', $subject->id ], 'method'=>'PUT', 'id' => 'subject-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'certifications')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/subjects') }}">Cancel</a></button>
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
	$("#subject-edit-form").validate({
		
	});
});
</script>
@endpush
