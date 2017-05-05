@include('../mpdf60/mpdf.php');
{!!$mpdf = new mPDF()!!}}
{!! $mpdf->WriteHTML() !!}


