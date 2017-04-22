@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/ask_a_certifications') }}">Ask a certification</a> :
@endsection
@section("contentheader_description", $ask_a_certification->$view_col)
@section("section", "Ask a certifications")
@section("section_url", url(config('laraadmin.adminRoute') . '/ask_a_certifications'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Ask a certifications Edit : ".$ask_a_certification->$view_col)

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
				{!! Form::model($ask_a_certification, ['route' => [config('laraadmin.adminRoute') . '.ask_a_certifications.update', $ask_a_certification->id ], 'method'=>'PUT', 'id' => 'ask_a_certification-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'status')
					@la_input($module, 'user')
					@la_input($module, 'certification')
					@la_input($module, 'sub_category')
					@la_input($module, 'category')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/ask_a_certifications') }}">Cancel</a></button>
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
	$("#ask_a_certification-edit-form").validate({
		
	});
});
</script>
@endpush
