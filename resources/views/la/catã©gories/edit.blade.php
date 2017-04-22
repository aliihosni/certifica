@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/cat„©gories') }}">Cat√©gory</a> :
@endsection
@section("contentheader_description", $cat„©gory->$view_col)
@section("section", "Cat√©gories")
@section("section_url", url(config('laraadmin.adminRoute') . '/cat„©gories'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Cat√©gories Edit : ".$cat„©gory->$view_col)

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
				{!! Form::model($cat„©gory, ['route' => [config('laraadmin.adminRoute') . '.cat„©gories.update', $cat„©gory->id ], 'method'=>'PUT', 'id' => 'cat„©gory-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'title')
					@la_input($module, 'logo')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/cat„©gories') }}">Cancel</a></button>
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
	$("#cat„©gory-edit-form").validate({
		
	});
});
</script>
@endpush
