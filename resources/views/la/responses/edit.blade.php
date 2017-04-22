@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/responses') }}">Response</a> :
@endsection
@section("contentheader_description", $response->$view_col)
@section("section", "Responses")
@section("section_url", url(config('laraadmin.adminRoute') . '/responses'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Responses Edit : ".$response->$view_col)

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
				{!! Form::model($response, ['route' => [config('laraadmin.adminRoute') . '.responses.update', $response->id ], 'method'=>'PUT', 'id' => 'response-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'content')
					@la_input($module, 'type')
					@la_input($module, 'question')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/responses') }}">Cancel</a></button>
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
	$("#response-edit-form").validate({
		
	});
});
</script>
@endpush
