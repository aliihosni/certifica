@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/questions') }}">Question</a> :
@endsection
@section("contentheader_description", $question->$view_col)
@section("section", "Questions")
@section("section_url", url(config('laraadmin.adminRoute') . '/questions'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Questions Edit : ".$question->$view_col)

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
				{!! Form::model($question, ['route' => [config('laraadmin.adminRoute') . '.questions.update', $question->id ], 'method'=>'PUT', 'id' => 'question-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'content')
					@la_input($module, 'subject')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/questions') }}">Cancel</a></button>
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
	$("#question-edit-form").validate({
		
	});
});
</script>
@endpush
