
// import 'package:image_picker/image_picker.dart';

// import '../../../service/graphql/api_result.dart';
// import '../data_source/upload_image_data_source.dart';
// import '../model/upload_image_response.dart';

// class UploadImageRepo {
//   const UploadImageRepo(this._dataSource);

//   final UploadImageDataSource _dataSource;

//   Future<ApiResult<UploadImageResourse>> uploadImage(XFile imageFile) async {
//     try {
//       final response = await _dataSource.uploadImage(imageFile: imageFile);

//       return ApiResult.success(response);
//     } catch (e) {
//       return const ApiResult.failure('Please, try agian we have error');
//     }
//   }
// }
