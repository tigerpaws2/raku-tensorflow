## Enumerations

# == ./include/tensorflow/c/tf_attrtype.h ==

enum TF_AttrType is export (
   TF_ATTR_STRING => 0,
   TF_ATTR_INT => 1,
   TF_ATTR_FLOAT => 2,
   TF_ATTR_BOOL => 3,
   TF_ATTR_TYPE => 4,
   TF_ATTR_SHAPE => 5,
   TF_ATTR_TENSOR => 6,
   TF_ATTR_PLACEHOLDER => 7,
   TF_ATTR_FUNC => 8
);

# == ./include/tensorflow/c/tf_datatype.h ==

enum TF_DataType is export (
   TF_FLOAT => 1,
   TF_DOUBLE => 2,
   TF_INT32 => 3,
   TF_UINT8 => 4,
   TF_INT16 => 5,
   TF_INT8 => 6,
   TF_STRING => 7,
   TF_COMPLEX64 => 8,
   TF_COMPLEX => 8,
   TF_INT64 => 9,
   TF_BOOL => 10,
   TF_QINT8 => 11,
   TF_QUINT8 => 12,
   TF_QINT32 => 13,
   TF_BFLOAT16 => 14,
   TF_QINT16 => 15,
   TF_QUINT16 => 16,
   TF_UINT16 => 17,
   TF_COMPLEX128 => 18,
   TF_HALF => 19,
   TF_RESOURCE => 20,
   TF_VARIANT => 21,
   TF_UINT32 => 22,
   TF_UINT64 => 23
);

# == ./include/tensorflow/c/tf_status.h ==

enum TF_Code is export (
   TF_OK => 0,
   TF_CANCELLED => 1,
   TF_UNKNOWN => 2,
   TF_INVALID_ARGUMENT => 3,
   TF_DEADLINE_EXCEEDED => 4,
   TF_NOT_FOUND => 5,
   TF_ALREADY_EXISTS => 6,
   TF_PERMISSION_DENIED => 7,
   TF_UNAUTHENTICATED => 16,
   TF_RESOURCE_EXHAUSTED => 8,
   TF_FAILED_PRECONDITION => 9,
   TF_ABORTED => 10,
   TF_OUT_OF_RANGE => 11,
   TF_UNIMPLEMENTED => 12,
   TF_INTERNAL => 13,
   TF_UNAVAILABLE => 14,
   TF_DATA_LOSS => 15
);
## Structures


# == ./include/tensorflow/c/tf_status.h ==

class TF_Status is repr('CStruct') is export {
}

# == &lt;builtin&gt; ==

class __va_list_tag is repr('CStruct') is export {
	has uint32                        $.gp_offset; # unsigned int gp_offset
	has uint32                        $.fp_offset; # unsigned int fp_offset
	has Pointer                       $.overflow_arg_area; # void* overflow_arg_area
	has Pointer                       $.reg_save_area; # void* reg_save_area
}
class __NSConstantString_tag is repr('CStruct') is export {
	has Pointer[int32]                $.isa; # const int* isa
	has int32                         $.flags; # int flags
	has Str                           $.str; # const char* str
	has long                          $.length; # long int length
}

# == ./include/tensorflow/c/c_api.h ==

class TF_Buffer is repr('CStruct') is export {
	has Pointer                       $.data; # const void* data
	has size_t                        $.length; # Typedef<size_t>->«long unsigned int» length
	has Pointer                       $.data_deallocator; # F:void ( )* data_deallocator
}
class TF_SessionOptions is repr('CStruct') is export {
}
class TF_Graph is repr('CStruct') is export {
}
class TF_OperationDescription is repr('CStruct') is export {
}
class TF_Operation is repr('CStruct') is export {
}
class TF_Input is repr('CStruct') is export {
	has TF_Operation                  $.oper; # Typedef<TF_Operation>->«TF_Operation»* oper
	has int32                         $.index; # int index
}
class TF_Output is repr('CStruct') is export {
	has TF_Operation                  $.oper; # Typedef<TF_Operation>->«TF_Operation»* oper
	has int32                         $.index; # int index
}
class TF_Function is repr('CStruct') is export {
}
class TF_FunctionOptions is repr('CStruct') is export {
}
class TF_AttrMetadata is repr('CStruct') is export {
	has uint8                         $.is_list; # unsigned char is_list
	has int64                         $.list_size; # Typedef<int64_t>->«Typedef<__int64_t>->«long int»» list_size
	has int32                         $.type; # Typedef<TF_AttrType>->«TF_AttrType» type
	has int64                         $.total_size; # Typedef<int64_t>->«Typedef<__int64_t>->«long int»» total_size
}
class TF_ImportGraphDefOptions is repr('CStruct') is export {
}
class TF_ImportGraphDefResults is repr('CStruct') is export {
}
class TF_WhileParams is repr('CStruct') is export {
	has int32                         $.ninputs; # const int ninputs
	has TF_Graph                      $.cond_graph; # const Typedef<TF_Graph>->«TF_Graph»* cond_graph
	has TF_Output                     $.cond_inputs; # const const Typedef<TF_Output>->«TF_Output»* cond_inputs
	has TF_Output                     $.cond_output; # Typedef<TF_Output>->«TF_Output» cond_output
	has TF_Graph                      $.body_graph; # const Typedef<TF_Graph>->«TF_Graph»* body_graph
	has TF_Output                     $.body_inputs; # const const Typedef<TF_Output>->«TF_Output»* body_inputs
	has TF_Output                     $.body_outputs; # const Typedef<TF_Output>->«TF_Output»* body_outputs
	has Str                           $.name; # const char* name
}
class TF_Session is repr('CStruct') is export {
}
class TF_DeprecatedSession is repr('CStruct') is export {
}
class TF_DeviceList is repr('CStruct') is export {
}
class TF_Library is repr('CStruct') is export {
}
class TF_ApiDefMap is repr('CStruct') is export {
}
class TF_Server is repr('CStruct') is export {
}

# == /usr/include/bits/types.h ==

class  is repr('CStruct') is export {
	has NYIRP6(Array with size)       $.__val; # int[2] __val
}

# == ./include/tensorflow/c/tf_tensor.h ==

class TF_Tensor is repr('CStruct') is export {
}
## Extras stuff

constant TF_Output is export := TF_Output;
constant TF_ImportGraphDefResults is export := TF_ImportGraphDefResults;
constant TF_ApiDefMap is export := TF_ApiDefMap;
constant TF_WhileParams is export := TF_WhileParams;
constant TF_Graph is export := TF_Graph;
constant TF_Buffer is export := TF_Buffer;
constant TF_SessionOptions is export := TF_SessionOptions;
constant TF_Input is export := TF_Input;
constant TF_Tensor is export := TF_Tensor;
constant TF_AttrMetadata is export := TF_AttrMetadata;
constant TF_ImportGraphDefOptions is export := TF_ImportGraphDefOptions;
constant TF_Operation is export := TF_Operation;
constant TF_Session is export := TF_Session;
constant TF_Server is export := TF_Server;
constant TF_DeprecatedSession is export := TF_DeprecatedSession;
constant TF_DeviceList is export := TF_DeviceList;
constant __NSConstantString is export := __NSConstantString_tag;
constant TF_Status is export := TF_Status;
constant TF_FunctionOptions is export := TF_FunctionOptions;
constant TF_Function is export := TF_Function;
constant __fsid_t is export := ;
constant TF_OperationDescription is export := TF_OperationDescription;
constant TF_Library is export := TF_Library;
## Functions


# == ./include/tensorflow/c/tf_tensor.h ==

#-From ./include/tensorflow/c/tf_tensor.h:77
#// Return a new tensor that holds the bytes data[0,len-1].
#//
#// The data will be deallocated by a subsequent call to TF_DeleteTensor via:
#//      (*deallocator)(data, len, deallocator_arg)
#// Clients must provide a custom deallocator function so they can pass in
#// memory managed by something like numpy.
#//
#// May return NULL (and invoke the deallocator) if the provided data buffer
#// (data, len) is inconsistent with a tensor of the given TF_DataType
#// and the shape specified by (dima, num_dims).
#TF_CAPI_EXPORT extern TF_Tensor* TF_NewTensor(
sub TF_NewTensor(int32                          # Typedef<TF_DataType>->«TF_DataType»
                ,Pointer[int64]                $dims # const Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                ,int32                         $num_dims # int
                ,Pointer                       $data # void*
                ,size_t                        $len # Typedef<size_t>->«long unsigned int»
                ,&deallocator () # F:void ( )*
                ,Pointer                       $deallocator_arg # void*
                 ) is native(LIB) returns TF_Tensor is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:91
#// Allocate and return a new Tensor.
#//
#// This function is an alternative to TF_NewTensor and should be used when
#// memory is allocated to pass the Tensor to the C API. The allocated memory
#// satisfies TensorFlow's memory alignment preferences and should be preferred
#// over calling malloc and free.
#//
#// The caller must set the Tensor values by writing them to the pointer returned
#// by TF_TensorData with length TF_TensorByteSize.
#TF_CAPI_EXPORT extern TF_Tensor* TF_AllocateTensor(TF_DataType,
sub TF_AllocateTensor(int32                          # Typedef<TF_DataType>->«TF_DataType»
                     ,Pointer[int64]                $dims # const Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                     ,int32                         $num_dims # int
                     ,size_t                        $len # Typedef<size_t>->«long unsigned int»
                      ) is native(LIB) returns TF_Tensor is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:97
#// Deletes `tensor` and returns a new TF_Tensor with the same content if
#// possible. Returns nullptr and leaves `tensor` untouched if not.
#TF_CAPI_EXPORT extern TF_Tensor* TF_TensorMaybeMove(TF_Tensor* tensor);
sub TF_TensorMaybeMove(TF_Tensor $tensor # Typedef<TF_Tensor>->«TF_Tensor»*
                       ) is native(LIB) returns TF_Tensor is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:100
#// Destroy a tensor.
#TF_CAPI_EXPORT extern void TF_DeleteTensor(TF_Tensor*);
sub TF_DeleteTensor(TF_Tensor  # Typedef<TF_Tensor>->«TF_Tensor»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:103
#// Return the type of a tensor element.
#TF_CAPI_EXPORT extern TF_DataType TF_TensorType(const TF_Tensor*);
sub TF_TensorType(TF_Tensor  # const Typedef<TF_Tensor>->«TF_Tensor»*
                  ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:106
#// Return the number of dimensions that the tensor has.
#TF_CAPI_EXPORT extern int TF_NumDims(const TF_Tensor*);
sub TF_NumDims(TF_Tensor  # const Typedef<TF_Tensor>->«TF_Tensor»*
               ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:110
#// Return the length of the tensor in the "dim_index" dimension.
#// REQUIRES: 0 <= dim_index < TF_NumDims(tensor)
#TF_CAPI_EXPORT extern int64_t TF_Dim(const TF_Tensor* tensor, int dim_index);
sub TF_Dim(TF_Tensor                     $tensor # const Typedef<TF_Tensor>->«TF_Tensor»*
          ,int32                         $dim_index # int
           ) is native(LIB) returns int64 is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:113
#// Return the size of the underlying data in bytes.
#TF_CAPI_EXPORT extern size_t TF_TensorByteSize(const TF_Tensor*);
sub TF_TensorByteSize(TF_Tensor  # const Typedef<TF_Tensor>->«TF_Tensor»*
                      ) is native(LIB) returns size_t is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:116
#// Return a pointer to the underlying data buffer.
#TF_CAPI_EXPORT extern void* TF_TensorData(const TF_Tensor*);
sub TF_TensorData(TF_Tensor  # const Typedef<TF_Tensor>->«TF_Tensor»*
                  ) is native(LIB) returns Pointer is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:119
#// Returns the number of elements in the tensor.
#TF_CAPI_EXPORT extern int64_t TF_TensorElementCount(const TF_Tensor* tensor);
sub TF_TensorElementCount(TF_Tensor $tensor # const Typedef<TF_Tensor>->«TF_Tensor»*
                          ) is native(LIB) returns int64 is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:145
#// Copy the internal data representation of `from` to `to`. `new_dims` and
#// `num_new_dims` specify the new shape of the `to` tensor, `type` specifies its
#// data type. On success, *status is set to TF_OK and the two tensors share the
#// same data buffer.
#//
#// This call requires that the `from` tensor and the given type and shape (dims
#// and num_dims) are "compatible" (i.e. they occupy the same number of bytes).
#// Specifically, given from_type_size = TF_DataTypeSize(TF_TensorType(from)):
#//
#// ShapeElementCount(dims, num_dims) * TF_DataTypeSize(type)
#//
#// must equal
#//
#// TF_TensorElementCount(from) * from_type_size
#//
#// where TF_ShapeElementCount would be the number of elements in a tensor with
#// the given shape.
#//
#// In addition, this function requires:
#//   * TF_DataTypeSize(TF_TensorType(from)) != 0
#//   * TF_DataTypeSize(type) != 0
#//
#// If any of the requirements are not met, *status is set to
#// TF_INVALID_ARGUMENT.
#TF_CAPI_EXPORT extern void TF_TensorBitcastFrom(const TF_Tensor* from,
sub TF_TensorBitcastFrom(TF_Tensor                     $from # const Typedef<TF_Tensor>->«TF_Tensor»*
                        ,int32                         $type # Typedef<TF_DataType>->«TF_DataType»
                        ,TF_Tensor                     $to # Typedef<TF_Tensor>->«TF_Tensor»*
                        ,Pointer[int64]                $new_dims # const Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                        ,int32                         $num_new_dims # int
                        ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                         ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:159
#// --------------------------------------------------------------------------
#// Encode the string `src` (`src_len` bytes long) into `dst` in the format
#// required by TF_STRING tensors. Does not write to memory more than `dst_len`
#// bytes beyond `*dst`. `dst_len` should be at least
#// TF_StringEncodedSize(src_len).
#//
#// On success returns the size in bytes of the encoded string.
#// Returns an error into `status` otherwise.
#TF_CAPI_EXPORT extern size_t TF_StringEncode(const char* src, size_t src_len,
sub TF_StringEncode(Str                           $src # const char*
                   ,size_t                        $src_len # Typedef<size_t>->«long unsigned int»
                   ,Str                           $dst # char*
                   ,size_t                        $dst_len # Typedef<size_t>->«long unsigned int»
                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                    ) is native(LIB) returns size_t is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:171
#// Decode a string encoded using TF_StringEncode.
#//
#// On success, sets `*dst` to the start of the decoded string and `*dst_len` to
#// its length. Returns the number of bytes starting at `src` consumed while
#// decoding. `*dst` points to memory within the encoded buffer.  On failure,
#// `*dst` and `*dst_len` are undefined and an error is set in `status`.
#//
#// Does not read memory more than `src_len` bytes beyond `src`.
#TF_CAPI_EXPORT extern size_t TF_StringDecode(const char* src, size_t src_len,
sub TF_StringDecode(Str                           $src # const char*
                   ,size_t                        $src_len # Typedef<size_t>->«long unsigned int»
                   ,Pointer[Str]                  $dst # const char**
                   ,Pointer[size_t]               $dst_len # Typedef<size_t>->«long unsigned int»*
                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                    ) is native(LIB) returns size_t is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:177
#// Return the size in bytes required to encode a string `len` bytes long into a
#// TF_STRING tensor.
#TF_CAPI_EXPORT extern size_t TF_StringEncodedSize(size_t len);
sub TF_StringEncodedSize(size_t $len # Typedef<size_t>->«long unsigned int»
                         ) is native(LIB) returns size_t is export { * }

#-From ./include/tensorflow/c/tf_tensor.h:180
#// Returns bool iff this tensor is aligned.
#TF_CAPI_EXPORT extern bool TF_TensorIsAligned(const TF_Tensor*);
sub TF_TensorIsAligned(TF_Tensor  # const Typedef<TF_Tensor>->«TF_Tensor»*
                       ) is native(LIB) returns bool is export { * }


# == ./include/tensorflow/c/tf_datatype.h ==

#-From ./include/tensorflow/c/tf_datatype.h:77
#// TF_DataTypeSize returns the sizeof() for the underlying type corresponding
#// to the given TF_DataType enum value. Returns 0 for variable length types
#// (eg. TF_STRING) or on failure.
#TF_CAPI_EXPORT extern size_t TF_DataTypeSize(TF_DataType dt);
sub TF_DataTypeSize(int32 $dt # Typedef<TF_DataType>->«TF_DataType»
                    ) is native(LIB) returns size_t is export { * }


# == ./include/tensorflow/c/tf_status.h ==

#-From ./include/tensorflow/c/tf_status.h:65
#// Return a new status object.
#TF_CAPI_EXPORT extern TF_Status* TF_NewStatus(void);
sub TF_NewStatus(
                 ) is native(LIB) returns TF_Status is export { * }

#-From ./include/tensorflow/c/tf_status.h:68
#// Delete a previously created status object.
#TF_CAPI_EXPORT extern void TF_DeleteStatus(TF_Status*);
sub TF_DeleteStatus(TF_Status  # Typedef<TF_Status>->«TF_Status»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/tf_status.h:72
#TF_CAPI_EXPORT extern void TF_SetStatus(TF_Status* s, TF_Code code,
sub TF_SetStatus(TF_Status                     $s # Typedef<TF_Status>->«TF_Status»*
                ,int32                         $code # Typedef<TF_Code>->«TF_Code»
                ,Str                           $msg # const char*
                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/tf_status.h:76
#// Return the code record in *s.
#TF_CAPI_EXPORT extern TF_Code TF_GetCode(const TF_Status* s);
sub TF_GetCode(TF_Status $s # const Typedef<TF_Status>->«TF_Status»*
               ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/tf_status.h:82
#// Return a pointer to the (null-terminated) error message in *s.  The
#// return value points to memory that is only usable until the next
#// mutation to *s.  Always returns an empty string if TF_GetCode(s) is
#// TF_OK.
#TF_CAPI_EXPORT extern const char* TF_Message(const TF_Status* s);
sub TF_Message(TF_Status $s # const Typedef<TF_Status>->«TF_Status»*
               ) is native(LIB) returns Str is export { * }


# == ./include/tensorflow/c/c_api.h ==

#-From ./include/tensorflow/c/c_api.h:99
#// --------------------------------------------------------------------------
#// TF_Version returns a string describing version information of the
#// TensorFlow library. TensorFlow using semantic versioning.
#TF_CAPI_EXPORT extern const char* TF_Version(void);
sub TF_Version(
               ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:117
#// Makes a copy of the input and sets an appropriate deallocator.  Useful for
#// passing in read-only, input protobufs.
#TF_CAPI_EXPORT extern TF_Buffer* TF_NewBufferFromString(const void* proto,
sub TF_NewBufferFromString(Pointer                       $proto # const void*
                          ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                           ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:121
#// Useful for passing *out* a protobuf.
#TF_CAPI_EXPORT extern TF_Buffer* TF_NewBuffer(void);
sub TF_NewBuffer(
                 ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:123
#TF_CAPI_EXPORT extern void TF_DeleteBuffer(TF_Buffer*);
sub TF_DeleteBuffer(TF_Buffer  # Typedef<TF_Buffer>->«TF_Buffer»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:125
#TF_CAPI_EXPORT extern TF_Buffer TF_GetBuffer(TF_Buffer* buffer);
sub TF_GetBuffer(TF_Buffer $buffer # Typedef<TF_Buffer>->«TF_Buffer»*
                 ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:132
#// Return a new options object.
#TF_CAPI_EXPORT extern TF_SessionOptions* TF_NewSessionOptions(void);
sub TF_NewSessionOptions(
                         ) is native(LIB) returns TF_SessionOptions is export { * }

#-From ./include/tensorflow/c/c_api.h:140
#// Set the target in TF_SessionOptions.options.
#// target can be empty, a single entry, or a comma separated list of entries.
#// Each entry is in one of the following formats :
#// "local"
#// ip:port
#// host:port
#TF_CAPI_EXPORT extern void TF_SetTarget(TF_SessionOptions* options,
sub TF_SetTarget(TF_SessionOptions             $options # Typedef<TF_SessionOptions>->«TF_SessionOptions»*
                ,Str                           $target # const char*
                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:147
#// Set the config in TF_SessionOptions.options.
#// config should be a serialized tensorflow.ConfigProto proto.
#// If config was not parsed successfully as a ConfigProto, record the
#// error information in *status.
#TF_CAPI_EXPORT extern void TF_SetConfig(TF_SessionOptions* options,
sub TF_SetConfig(TF_SessionOptions             $options # Typedef<TF_SessionOptions>->«TF_SessionOptions»*
                ,Pointer                       $proto # const void*
                ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:152
#// Destroy an options object.
#TF_CAPI_EXPORT extern void TF_DeleteSessionOptions(TF_SessionOptions*);
sub TF_DeleteSessionOptions(TF_SessionOptions  # Typedef<TF_SessionOptions>->«TF_SessionOptions»*
                            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:165
#// Return a new graph object.
#TF_CAPI_EXPORT extern TF_Graph* TF_NewGraph(void);
sub TF_NewGraph(
                ) is native(LIB) returns TF_Graph is export { * }

#-From ./include/tensorflow/c/c_api.h:169
#// Destroy an options object.  Graph will be deleted once no more
#// TFSession's are referencing it.
#TF_CAPI_EXPORT extern void TF_DeleteGraph(TF_Graph*);
sub TF_DeleteGraph(TF_Graph  # Typedef<TF_Graph>->«TF_Graph»*
                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:215
#// Sets the shape of the Tensor referenced by `output` in `graph` to
#// the shape described by `dims` and `num_dims`.
#//
#// If the number of dimensions is unknown, `num_dims` must be set to
#// -1 and `dims` can be null. If a dimension is unknown, the
#// corresponding entry in the `dims` array must be -1.
#//
#// This does not overwrite the existing shape associated with `output`,
#// but merges the input shape with the existing shape.  For example,
#// setting a shape of [-1, 2] with an existing shape [2, -1] would set
#// a final shape of [2, 2] based on shape merging semantics.
#//
#// Returns an error into `status` if:
#//   * `output` is not in `graph`.
#//   * An invalid shape is being set (e.g., the shape being set
#//     is incompatible with the existing shape).
#TF_CAPI_EXPORT extern void TF_GraphSetTensorShape(TF_Graph* graph,
sub TF_GraphSetTensorShape(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                          ,TF_Output                     $output # Typedef<TF_Output>->«TF_Output»
                          ,Pointer[int64]                $dims # const Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                          ,int32                         $num_dims # const int
                          ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                           ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:228
#// Returns the number of dimensions of the Tensor referenced by `output`
#// in `graph`.
#//
#// If the number of dimensions in the shape is unknown, returns -1.
#//
#// Returns an error into `status` if:
#//   * `output` is not in `graph`.
#TF_CAPI_EXPORT extern int TF_GraphGetTensorNumDims(TF_Graph* graph,
sub TF_GraphGetTensorNumDims(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                            ,TF_Output                     $output # Typedef<TF_Output>->«TF_Output»
                            ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                             ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:244
#// Returns the shape of the Tensor referenced by `output` in `graph`
#// into `dims`. `dims` must be an array large enough to hold `num_dims`
#// entries (e.g., the return value of TF_GraphGetTensorNumDims).
#//
#// If the number of dimensions in the shape is unknown or the shape is
#// a scalar, `dims` will remain untouched. Otherwise, each element of
#// `dims` will be set corresponding to the size of the dimension. An
#// unknown dimension is represented by `-1`.
#//
#// Returns an error into `status` if:
#//   * `output` is not in `graph`.
#//   * `num_dims` does not match the actual number of dimensions.
#TF_CAPI_EXPORT extern void TF_GraphGetTensorShape(TF_Graph* graph,
sub TF_GraphGetTensorShape(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                          ,TF_Output                     $output # Typedef<TF_Output>->«TF_Output»
                          ,Pointer[int64]                $dims # Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                          ,int32                         $num_dims # int
                          ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                           ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:253
#// Operation will only be added to *graph when TF_FinishOperation() is
#// called (assuming TF_FinishOperation() does not return an error).
#// *graph must not be deleted until after TF_FinishOperation() is
#// called.
#TF_CAPI_EXPORT extern TF_OperationDescription* TF_NewOperation(
sub TF_NewOperation(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                   ,Str                           $op_type # const char*
                   ,Str                           $oper_name # const char*
                    ) is native(LIB) returns TF_OperationDescription is export { * }

#-From ./include/tensorflow/c/c_api.h:257
#// Specify the device for `desc`.  Defaults to empty, meaning unconstrained.
#TF_CAPI_EXPORT extern void TF_SetDevice(TF_OperationDescription* desc,
sub TF_SetDevice(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                ,Str                           $device # const char*
                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:281
#// For inputs that take a single tensor.
#TF_CAPI_EXPORT extern void TF_AddInput(TF_OperationDescription* desc,
sub TF_AddInput(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
               ,TF_Output                     $input # Typedef<TF_Output>->«TF_Output»
                ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:286
#// For inputs that take a list of tensors.
#// inputs must point to TF_Output[num_inputs].
#TF_CAPI_EXPORT extern void TF_AddInputList(TF_OperationDescription* desc,
sub TF_AddInputList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                   ,TF_Output                     $inputs # const Typedef<TF_Output>->«TF_Output»*
                   ,int32                         $num_inputs # int
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:291
#// Call once per control input to `desc`.
#TF_CAPI_EXPORT extern void TF_AddControlInput(TF_OperationDescription* desc,
sub TF_AddControlInput(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                      ,TF_Operation                  $input # Typedef<TF_Operation>->«TF_Operation»*
                       ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:299
#// Request that `desc` be co-located on the device where `op`
#// is placed.
#//
#// Use of this is discouraged since the implementation of device placement is
#// subject to change. Primarily intended for internal libraries
#TF_CAPI_EXPORT extern void TF_ColocateWith(TF_OperationDescription* desc,
sub TF_ColocateWith(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                   ,TF_Operation                  $op # Typedef<TF_Operation>->«TF_Operation»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:307
#// `value` must point to a string of length `length` bytes.
#TF_CAPI_EXPORT extern void TF_SetAttrString(TF_OperationDescription* desc,
sub TF_SetAttrString(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                    ,Str                           $attr_name # const char*
                    ,Pointer                       $value # const void*
                    ,size_t                        $length # Typedef<size_t>->«long unsigned int»
                     ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:312
#// `values` and `lengths` each must have lengths `num_values`.
#// `values[i]` must point to a string of length `lengths[i]` bytes.
#TF_CAPI_EXPORT extern void TF_SetAttrStringList(TF_OperationDescription* desc,
sub TF_SetAttrStringList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                        ,Str                           $attr_name # const char*
                        ,Pointer[Pointer]              $values # const const void**
                        ,Pointer[size_t]               $lengths # const Typedef<size_t>->«long unsigned int»*
                        ,int32                         $num_values # int
                         ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:317
#TF_CAPI_EXPORT extern void TF_SetAttrInt(TF_OperationDescription* desc,
sub TF_SetAttrInt(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                 ,Str                           $attr_name # const char*
                 ,int64                         $value # Typedef<int64_t>->«Typedef<__int64_t>->«long int»»
                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:319
#TF_CAPI_EXPORT extern void TF_SetAttrIntList(TF_OperationDescription* desc,
sub TF_SetAttrIntList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                     ,Str                           $attr_name # const char*
                     ,Pointer[int64]                $values # const Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                     ,int32                         $num_values # int
                      ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:323
#TF_CAPI_EXPORT extern void TF_SetAttrFloat(TF_OperationDescription* desc,
sub TF_SetAttrFloat(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                   ,Str                           $attr_name # const char*
                   ,num32                         $value # float
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:325
#TF_CAPI_EXPORT extern void TF_SetAttrFloatList(TF_OperationDescription* desc,
sub TF_SetAttrFloatList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                       ,Str                           $attr_name # const char*
                       ,Pointer[num32]                $values # const float*
                       ,int32                         $num_values # int
                        ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:329
#TF_CAPI_EXPORT extern void TF_SetAttrBool(TF_OperationDescription* desc,
sub TF_SetAttrBool(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                  ,Str                           $attr_name # const char*
                  ,uint8                         $value # unsigned char
                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:332
#TF_CAPI_EXPORT extern void TF_SetAttrBoolList(TF_OperationDescription* desc,
sub TF_SetAttrBoolList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                      ,Str                           $attr_name # const char*
                      ,Pointer[uint8]                $values # const unsigned char*
                      ,int32                         $num_values # int
                       ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:336
#TF_CAPI_EXPORT extern void TF_SetAttrType(TF_OperationDescription* desc,
sub TF_SetAttrType(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                  ,Str                           $attr_name # const char*
                  ,int32                         $value # Typedef<TF_DataType>->«TF_DataType»
                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:339
#TF_CAPI_EXPORT extern void TF_SetAttrTypeList(TF_OperationDescription* desc,
sub TF_SetAttrTypeList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                      ,Str                           $attr_name # const char*
                      ,Pointer[int32]                $values # const Typedef<TF_DataType>->«TF_DataType»*
                      ,int32                         $num_values # int
                       ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:343
#TF_CAPI_EXPORT extern void TF_SetAttrPlaceholder(TF_OperationDescription* desc,
sub TF_SetAttrPlaceholder(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                         ,Str                           $attr_name # const char*
                         ,Str                           $placeholder # const char*
                          ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:349
#// Set a 'func' attribute to the specified name.
#// `value` must point to a string of length `length` bytes.
#TF_CAPI_EXPORT extern void TF_SetAttrFuncName(TF_OperationDescription* desc,
sub TF_SetAttrFuncName(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                      ,Str                           $attr_name # const char*
                      ,Str                           $value # const char*
                      ,size_t                        $length # Typedef<size_t>->«long unsigned int»
                       ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:356
#// Set `num_dims` to -1 to represent "unknown rank".  Otherwise,
#// `dims` points to an array of length `num_dims`.  `dims[i]` must be
#// >= -1, with -1 meaning "unknown dimension".
#TF_CAPI_EXPORT extern void TF_SetAttrShape(TF_OperationDescription* desc,
sub TF_SetAttrShape(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                   ,Str                           $attr_name # const char*
                   ,Pointer[int64]                $dims # const Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                   ,int32                         $num_dims # int
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:363
#// `dims` and `num_dims` must point to arrays of length `num_shapes`.
#// Set `num_dims[i]` to -1 to represent "unknown rank".  Otherwise,
#// `dims[i]` points to an array of length `num_dims[i]`.  `dims[i][j]`
#// must be >= -1, with -1 meaning "unknown dimension".
#TF_CAPI_EXPORT extern void TF_SetAttrShapeList(TF_OperationDescription* desc,
sub TF_SetAttrShapeList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                       ,Str                           $attr_name # const char*
                       ,Pointer[Pointer[int64]]       $dims # const const Typedef<int64_t>->«Typedef<__int64_t>->«long int»»**
                       ,Pointer[int32]                $num_dims # const int*
                       ,int32                         $num_shapes # int
                        ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:370
#// `proto` must point to an array of `proto_len` bytes representing a
#// binary-serialized TensorShapeProto.
#TF_CAPI_EXPORT extern void TF_SetAttrTensorShapeProto(
sub TF_SetAttrTensorShapeProto(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                              ,Str                           $attr_name # const char*
                              ,Pointer                       $proto # const void*
                              ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                              ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                               ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:376
#// `protos` and `proto_lens` must point to arrays of length `num_shapes`.
#// `protos[i]` must point to an array of `proto_lens[i]` bytes
#// representing a binary-serialized TensorShapeProto.
#TF_CAPI_EXPORT extern void TF_SetAttrTensorShapeProtoList(
sub TF_SetAttrTensorShapeProtoList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                                  ,Str                           $attr_name # const char*
                                  ,Pointer[Pointer]              $protos # const const void**
                                  ,Pointer[size_t]               $proto_lens # const Typedef<size_t>->«long unsigned int»*
                                  ,int32                         $num_shapes # int
                                  ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:381
#TF_CAPI_EXPORT extern void TF_SetAttrTensor(TF_OperationDescription* desc,
sub TF_SetAttrTensor(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                    ,Str                           $attr_name # const char*
                    ,TF_Tensor                     $value # Typedef<TF_Tensor>->«TF_Tensor»*
                    ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                     ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:385
#TF_CAPI_EXPORT extern void TF_SetAttrTensorList(TF_OperationDescription* desc,
sub TF_SetAttrTensorList(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                        ,Str                           $attr_name # const char*
                        ,Pointer[TF_Tensor]            $values # const Typedef<TF_Tensor>->«TF_Tensor»**
                        ,int32                         $num_values # int
                        ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                         ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:394
#// `proto` should point to a sequence of bytes of length `proto_len`
#// representing a binary serialization of an AttrValue protocol
#// buffer.
#TF_CAPI_EXPORT extern void TF_SetAttrValueProto(TF_OperationDescription* desc,
sub TF_SetAttrValueProto(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                        ,Str                           $attr_name # const char*
                        ,Pointer                       $proto # const void*
                        ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                        ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                         ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:410
#// If this function succeeds:
#//   * *status is set to an OK value,
#//   * a TF_Operation is added to the graph,
#//   * a non-null value pointing to the added operation is returned --
#//     this value is valid until the underlying graph is deleted.
#// Otherwise:
#//   * *status is set to a non-OK value,
#//   * the graph is not modified,
#//   * a null value is returned.
#// In either case, it deletes `desc`.
#TF_CAPI_EXPORT extern TF_Operation* TF_FinishOperation(
sub TF_FinishOperation(TF_OperationDescription       $desc # Typedef<TF_OperationDescription>->«TF_OperationDescription»*
                      ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                       ) is native(LIB) returns TF_Operation is export { * }

#-From ./include/tensorflow/c/c_api.h:416
#TF_CAPI_EXPORT extern const char* TF_OperationName(TF_Operation* oper);
sub TF_OperationName(TF_Operation $oper # Typedef<TF_Operation>->«TF_Operation»*
                     ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:417
#TF_CAPI_EXPORT extern const char* TF_OperationOpType(TF_Operation* oper);
sub TF_OperationOpType(TF_Operation $oper # Typedef<TF_Operation>->«TF_Operation»*
                       ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:418
#TF_CAPI_EXPORT extern const char* TF_OperationDevice(TF_Operation* oper);
sub TF_OperationDevice(TF_Operation $oper # Typedef<TF_Operation>->«TF_Operation»*
                       ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:420
#TF_CAPI_EXPORT extern int TF_OperationNumOutputs(TF_Operation* oper);
sub TF_OperationNumOutputs(TF_Operation $oper # Typedef<TF_Operation>->«TF_Operation»*
                           ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:421
#TF_CAPI_EXPORT extern TF_DataType TF_OperationOutputType(TF_Output oper_out);
sub TF_OperationOutputType(TF_Output $oper_out # Typedef<TF_Output>->«TF_Output»
                           ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:422
#TF_CAPI_EXPORT extern int TF_OperationOutputListLength(TF_Operation* oper,
sub TF_OperationOutputListLength(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                ,Str                           $arg_name # const char*
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:426
#TF_CAPI_EXPORT extern int TF_OperationNumInputs(TF_Operation* oper);
sub TF_OperationNumInputs(TF_Operation $oper # Typedef<TF_Operation>->«TF_Operation»*
                          ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:427
#TF_CAPI_EXPORT extern TF_DataType TF_OperationInputType(TF_Input oper_in);
sub TF_OperationInputType(TF_Input $oper_in # Typedef<TF_Input>->«TF_Input»
                          ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:428
#TF_CAPI_EXPORT extern int TF_OperationInputListLength(TF_Operation* oper,
sub TF_OperationInputListLength(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                               ,Str                           $arg_name # const char*
                               ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:436
#// There is an edge from producer.oper's output (given by
#// producer.index) to consumer.oper's input (given by consumer.index).
#TF_CAPI_EXPORT extern TF_Output TF_OperationInput(TF_Input oper_in);
sub TF_OperationInput(TF_Input $oper_in # Typedef<TF_Input>->«TF_Input»
                      ) is native(LIB) returns TF_Output is export { * }

#-From ./include/tensorflow/c/c_api.h:441
#// Get the number of current consumers of a specific output of an
#// operation.  Note that this number can change when new operations
#// are added to the graph.
#TF_CAPI_EXPORT extern int TF_OperationOutputNumConsumers(TF_Output oper_out);
sub TF_OperationOutputNumConsumers(TF_Output $oper_out # Typedef<TF_Output>->«TF_Output»
                                   ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:450
#// Get list of all current consumers of a specific output of an
#// operation.  `consumers` must point to an array of length at least
#// `max_consumers` (ideally set to
#// TF_OperationOutputNumConsumers(oper_out)).  Beware that a concurrent
#// modification of the graph can increase the number of consumers of
#// an operation.  Returns the number of output consumers (should match
#// TF_OperationOutputNumConsumers(oper_out)).
#TF_CAPI_EXPORT extern int TF_OperationOutputConsumers(TF_Output oper_out,
sub TF_OperationOutputConsumers(TF_Output                     $oper_out # Typedef<TF_Output>->«TF_Output»
                               ,TF_Input                      $consumers # Typedef<TF_Input>->«TF_Input»*
                               ,int32                         $max_consumers # int
                                ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:455
#// Get the number of control inputs to an operation.
#TF_CAPI_EXPORT extern int TF_OperationNumControlInputs(TF_Operation* oper);
sub TF_OperationNumControlInputs(TF_Operation $oper # Typedef<TF_Operation>->«TF_Operation»*
                                 ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:461
#// Get list of all control inputs to an operation.  `control_inputs` must
#// point to an array of length `max_control_inputs` (ideally set to
#// TF_OperationNumControlInputs(oper)).  Returns the number of control
#// inputs (should match TF_OperationNumControlInputs(oper)).
#TF_CAPI_EXPORT extern int TF_OperationGetControlInputs(
sub TF_OperationGetControlInputs(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                ,Pointer[TF_Operation]         $control_inputs # Typedef<TF_Operation>->«TF_Operation»**
                                ,int32                         $max_control_inputs # int
                                 ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:467
#// Get the number of operations that have `*oper` as a control input.
#// Note that this number can change when new operations are added to
#// the graph.
#TF_CAPI_EXPORT extern int TF_OperationNumControlOutputs(TF_Operation* oper);
sub TF_OperationNumControlOutputs(TF_Operation $oper # Typedef<TF_Operation>->«TF_Operation»*
                                  ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:476
#// Get the list of operations that have `*oper` as a control input.
#// `control_outputs` must point to an array of length at least
#// `max_control_outputs` (ideally set to
#// TF_OperationNumControlOutputs(oper)). Beware that a concurrent
#// modification of the graph can increase the number of control
#// outputs.  Returns the number of control outputs (should match
#// TF_OperationNumControlOutputs(oper)).
#TF_CAPI_EXPORT extern int TF_OperationGetControlOutputs(
sub TF_OperationGetControlOutputs(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                 ,Pointer[TF_Operation]         $control_outputs # Typedef<TF_Operation>->«TF_Operation»**
                                 ,int32                         $max_control_outputs # int
                                  ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:512
#// Returns metadata about the value of the attribute `attr_name` of `oper`.
#TF_CAPI_EXPORT extern TF_AttrMetadata TF_OperationGetAttrMetadata(
sub TF_OperationGetAttrMetadata(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                               ,Str                           $attr_name # const char*
                               ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                ) is native(LIB) returns TF_AttrMetadata is export { * }

#-From ./include/tensorflow/c/c_api.h:519
#// Fills in `value` with the value of the attribute `attr_name`.  `value` must
#// point to an array of length at least `max_length` (ideally set to
#// TF_AttrMetadata.total_size from TF_OperationGetAttrMetadata(oper,
#// attr_name)).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrString(TF_Operation* oper,
sub TF_OperationGetAttrString(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                             ,Str                           $attr_name # const char*
                             ,Pointer                       $value # void*
                             ,size_t                        $max_length # Typedef<size_t>->«long unsigned int»
                             ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                              ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:536
#// Get the list of strings in the value of the attribute `attr_name`.  Fills in
#// `values` and `lengths`, each of which must point to an array of length at
#// least `max_values`.
#//
#// The elements of values will point to addresses in `storage` which must be at
#// least `storage_size` bytes in length.  Ideally, max_values would be set to
#// TF_AttrMetadata.list_size and `storage` would be at least
#// TF_AttrMetadata.total_size, obtained from TF_OperationGetAttrMetadata(oper,
#// attr_name).
#//
#// Fails if storage_size is too small to hold the requested number of strings.
#TF_CAPI_EXPORT extern void TF_OperationGetAttrStringList(
sub TF_OperationGetAttrStringList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                 ,Str                           $attr_name # const char*
                                 ,Pointer[Pointer]              $values # void**
                                 ,Pointer[size_t]               $lengths # Typedef<size_t>->«long unsigned int»*
                                 ,int32                         $max_values # int
                                 ,Pointer                       $storage # void*
                                 ,size_t                        $storage_size # Typedef<size_t>->«long unsigned int»
                                 ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:540
#TF_CAPI_EXPORT extern void TF_OperationGetAttrInt(TF_Operation* oper,
sub TF_OperationGetAttrInt(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                          ,Str                           $attr_name # const char*
                          ,Pointer[int64]                $value # Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                          ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                           ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:549
#// Fills in `values` with the value of the attribute `attr_name` of `oper`.
#// `values` must point to an array of length at least `max_values` (ideally set
#// TF_AttrMetadata.list_size from TF_OperationGetAttrMetadata(oper,
#// attr_name)).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrIntList(TF_Operation* oper,
sub TF_OperationGetAttrIntList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                              ,Str                           $attr_name # const char*
                              ,Pointer[int64]                $values # Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                              ,int32                         $max_values # int
                              ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                               ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:555
#TF_CAPI_EXPORT extern void TF_OperationGetAttrFloat(TF_Operation* oper,
sub TF_OperationGetAttrFloat(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                            ,Str                           $attr_name # const char*
                            ,Pointer[num32]                $value # float*
                            ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                             ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:564
#// Fills in `values` with the value of the attribute `attr_name` of `oper`.
#// `values` must point to an array of length at least `max_values` (ideally set
#// to TF_AttrMetadata.list_size from TF_OperationGetAttrMetadata(oper,
#// attr_name)).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrFloatList(TF_Operation* oper,
sub TF_OperationGetAttrFloatList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                ,Str                           $attr_name # const char*
                                ,Pointer[num32]                $values # float*
                                ,int32                         $max_values # int
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:570
#TF_CAPI_EXPORT extern void TF_OperationGetAttrBool(TF_Operation* oper,
sub TF_OperationGetAttrBool(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                           ,Str                           $attr_name # const char*
                           ,Pointer[uint8]                $value # unsigned char*
                           ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:579
#// Fills in `values` with the value of the attribute `attr_name` of `oper`.
#// `values` must point to an array of length at least `max_values` (ideally set
#// to TF_AttrMetadata.list_size from TF_OperationGetAttrMetadata(oper,
#// attr_name)).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrBoolList(TF_Operation* oper,
sub TF_OperationGetAttrBoolList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                               ,Str                           $attr_name # const char*
                               ,Pointer[uint8]                $values # unsigned char*
                               ,int32                         $max_values # int
                               ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:585
#TF_CAPI_EXPORT extern void TF_OperationGetAttrType(TF_Operation* oper,
sub TF_OperationGetAttrType(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                           ,Str                           $attr_name # const char*
                           ,Pointer[int32]                $value # Typedef<TF_DataType>->«TF_DataType»*
                           ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:594
#// Fills in `values` with the value of the attribute `attr_name` of `oper`.
#// `values` must point to an array of length at least `max_values` (ideally set
#// to TF_AttrMetadata.list_size from TF_OperationGetAttrMetadata(oper,
#// attr_name)).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrTypeList(TF_Operation* oper,
sub TF_OperationGetAttrTypeList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                               ,Str                           $attr_name # const char*
                               ,Pointer[int32]                $values # Typedef<TF_DataType>->«TF_DataType»*
                               ,int32                         $max_values # int
                               ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:603
#// Fills in `value` with the value of the attribute `attr_name` of `oper`.
#// `values` must point to an array of length at least `num_dims` (ideally set to
#// TF_Attr_Meta.size from TF_OperationGetAttrMetadata(oper, attr_name)).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrShape(TF_Operation* oper,
sub TF_OperationGetAttrShape(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                            ,Str                           $attr_name # const char*
                            ,Pointer[int64]                $value # Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                            ,int32                         $num_dims # int
                            ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                             ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:622
#// Fills in `dims` with the list of shapes in the attribute `attr_name` of
#// `oper` and `num_dims` with the corresponding number of dimensions. On return,
#// for every i where `num_dims[i]` > 0, `dims[i]` will be an array of
#// `num_dims[i]` elements. A value of -1 for `num_dims[i]` indicates that the
#// i-th shape in the list is unknown.
#//
#// The elements of `dims` will point to addresses in `storage` which must be
#// large enough to hold at least `storage_size` int64_ts.  Ideally, `num_shapes`
#// would be set to TF_AttrMetadata.list_size and `storage_size` would be set to
#// TF_AttrMetadata.total_size from TF_OperationGetAttrMetadata(oper,
#// attr_name).
#//
#// Fails if storage_size is insufficient to hold the requested shapes.
#TF_CAPI_EXPORT extern void TF_OperationGetAttrShapeList(
sub TF_OperationGetAttrShapeList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                ,Str                           $attr_name # const char*
                                ,Pointer[Pointer[int64]]       $dims # Typedef<int64_t>->«Typedef<__int64_t>->«long int»»**
                                ,Pointer[int32]                $num_dims # int*
                                ,int32                         $num_shapes # int
                                ,Pointer[int64]                $storage # Typedef<int64_t>->«Typedef<__int64_t>->«long int»»*
                                ,int32                         $storage_size # int
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:628
#// Sets `value` to the binary-serialized TensorShapeProto of the value of
#// `attr_name` attribute of `oper`'.
#TF_CAPI_EXPORT extern void TF_OperationGetAttrTensorShapeProto(
sub TF_OperationGetAttrTensorShapeProto(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                       ,Str                           $attr_name # const char*
                                       ,TF_Buffer                     $value # Typedef<TF_Buffer>->«TF_Buffer»*
                                       ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                        ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:636
#// Fills in `values` with binary-serialized TensorShapeProto values of the
#// attribute `attr_name` of `oper`. `values` must point to an array of length at
#// least `num_values` (ideally set to TF_AttrMetadata.list_size from
#// TF_OperationGetAttrMetadata(oper, attr_name)).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrTensorShapeProtoList(
sub TF_OperationGetAttrTensorShapeProtoList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                           ,Str                           $attr_name # const char*
                                           ,Pointer[TF_Buffer]            $values # Typedef<TF_Buffer>->«TF_Buffer»**
                                           ,int32                         $max_values # int
                                           ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:644
#// Gets the TF_Tensor valued attribute of `attr_name` of `oper`.
#//
#// Allocates a new TF_Tensor which the caller is expected to take
#// ownership of (and can deallocate using TF_DeleteTensor).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrTensor(TF_Operation* oper,
sub TF_OperationGetAttrTensor(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                             ,Str                           $attr_name # const char*
                             ,Pointer[TF_Tensor]            $value # Typedef<TF_Tensor>->«TF_Tensor»**
                             ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                              ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:656
#// Fills in `values` with the TF_Tensor values of the attribute `attr_name` of
#// `oper`. `values` must point to an array of TF_Tensor* of length at least
#// `max_values` (ideally set to TF_AttrMetadata.list_size from
#// TF_OperationGetAttrMetadata(oper, attr_name)).
#//
#// The caller takes ownership of all the non-null TF_Tensor* entries in `values`
#// (which can be deleted using TF_DeleteTensor(values[i])).
#TF_CAPI_EXPORT extern void TF_OperationGetAttrTensorList(TF_Operation* oper,
sub TF_OperationGetAttrTensorList(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                 ,Str                           $attr_name # const char*
                                 ,Pointer[TF_Tensor]            $values # Typedef<TF_Tensor>->«TF_Tensor»**
                                 ,int32                         $max_values # int
                                 ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:664
#// Sets `output_attr_value` to the binary-serialized AttrValue proto
#// representation of the value of the `attr_name` attr of `oper`.
#TF_CAPI_EXPORT extern void TF_OperationGetAttrValueProto(
sub TF_OperationGetAttrValueProto(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                 ,Str                           $attr_name # const char*
                                 ,TF_Buffer                     $output_attr_value # Typedef<TF_Buffer>->«TF_Buffer»*
                                 ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:670
#// Returns the operation in the graph with `oper_name`. Returns nullptr if
#// no operation found.
#TF_CAPI_EXPORT extern TF_Operation* TF_GraphOperationByName(
sub TF_GraphOperationByName(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                           ,Str                           $oper_name # const char*
                            ) is native(LIB) returns TF_Operation is export { * }

#-From ./include/tensorflow/c/c_api.h:679
#// }
#TF_CAPI_EXPORT extern TF_Operation* TF_GraphNextOperation(TF_Graph* graph,
sub TF_GraphNextOperation(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                         ,Pointer[size_t]               $pos # Typedef<size_t>->«long unsigned int»*
                          ) is native(LIB) returns TF_Operation is export { * }

#-From ./include/tensorflow/c/c_api.h:688
#// Write out a serialized representation of `graph` (as a GraphDef protocol
#// message) to `output_graph_def` (allocated by TF_NewBuffer()).
#// `output_graph_def`'s underlying buffer will be freed when TF_DeleteBuffer()
#// is called.
#//
#// May fail on very large graphs in the future.
#TF_CAPI_EXPORT extern void TF_GraphToGraphDef(TF_Graph* graph,
sub TF_GraphToGraphDef(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                      ,TF_Buffer                     $output_graph_def # Typedef<TF_Buffer>->«TF_Buffer»*
                      ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                       ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:694
#// Returns the serialized OpDef proto with name `op_name`, or a bad status if no
#// such op exists. This can return OpDefs of functions copied into the graph.
#TF_CAPI_EXPORT extern void TF_GraphGetOpDef(TF_Graph* graph,
sub TF_GraphGetOpDef(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                    ,Str                           $op_name # const char*
                    ,TF_Buffer                     $output_op_def # Typedef<TF_Buffer>->«TF_Buffer»*
                    ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                     ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:700
#// Returns the serialized VersionDef proto for this graph.
#TF_CAPI_EXPORT extern void TF_GraphVersions(TF_Graph* graph,
sub TF_GraphVersions(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                    ,TF_Buffer                     $output_version_def # Typedef<TF_Buffer>->«TF_Buffer»*
                    ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                     ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:708
#TF_CAPI_EXPORT extern TF_ImportGraphDefOptions* TF_NewImportGraphDefOptions(
sub TF_NewImportGraphDefOptions(
                                ) is native(LIB) returns TF_ImportGraphDefOptions is export { * }

#-From ./include/tensorflow/c/c_api.h:710
#TF_CAPI_EXPORT extern void TF_DeleteImportGraphDefOptions(
sub TF_DeleteImportGraphDefOptions(TF_ImportGraphDefOptions $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:716
#// Set the prefix to be prepended to the names of nodes in `graph_def` that will
#// be imported into `graph`. `prefix` is copied and has no lifetime
#// requirements.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsSetPrefix(
sub TF_ImportGraphDefOptionsSetPrefix(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                     ,Str                           $prefix # const char*
                                      ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:722
#// Set the execution device for nodes in `graph_def`.
#// Only applies to nodes where a device was not already explicitly specified.
#// `device` is copied and has no lifetime requirements.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsSetDefaultDevice(
sub TF_ImportGraphDefOptionsSetDefaultDevice(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                            ,Str                           $device # const char*
                                             ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:730
#// Set whether to uniquify imported operation names. If true, imported operation
#// names will be modified if their name already exists in the graph. If false,
#// conflicting names will be treated as an error. Note that this option has no
#// effect if a prefix is set, since the prefix will guarantee all names are
#// unique. Defaults to false.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsSetUniquifyNames(
sub TF_ImportGraphDefOptionsSetUniquifyNames(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                            ,uint8                         $uniquify_names # unsigned char
                                             ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:736
#// If true, the specified prefix will be modified if it already exists as an
#// operation name or prefix in the graph. If false, a conflicting prefix will be
#// treated as an error. This option has no effect if no prefix is specified.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsSetUniquifyPrefix(
sub TF_ImportGraphDefOptionsSetUniquifyPrefix(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                             ,uint8                         $uniquify_prefix # unsigned char
                                              ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:743
#// Set any imported nodes with input `src_name:src_index` to have that input
#// replaced with `dst`. `src_name` refers to a node in the graph to be imported,
#// `dst` references a node already existing in the graph being imported into.
#// `src_name` is copied and has no lifetime requirements.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsAddInputMapping(
sub TF_ImportGraphDefOptionsAddInputMapping(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                           ,Str                           $src_name # const char*
                                           ,int32                         $src_index # int
                                           ,TF_Output                     $dst # Typedef<TF_Output>->«TF_Output»
                                            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:751
#// Set any imported nodes with control input `src_name` to have that input
#// replaced with `dst`. `src_name` refers to a node in the graph to be imported,
#// `dst` references an operation already existing in the graph being imported
#// into. `src_name` is copied and has no lifetime requirements.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsRemapControlDependency(
sub TF_ImportGraphDefOptionsRemapControlDependency(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                                  ,Str                           $src_name # const char*
                                                  ,TF_Operation                  $dst # Typedef<TF_Operation>->«TF_Operation»*
                                                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:756
#// Cause the imported graph to have a control dependency on `oper`. `oper`
#// should exist in the graph being imported into.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsAddControlDependency(
sub TF_ImportGraphDefOptionsAddControlDependency(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                                ,TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                                                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:763
#// Add an output in `graph_def` to be returned via the `return_outputs` output
#// parameter of TF_GraphImportGraphDef(). If the output is remapped via an input
#// mapping, the corresponding existing tensor in `graph` will be returned.
#// `oper_name` is copied and has no lifetime requirements.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsAddReturnOutput(
sub TF_ImportGraphDefOptionsAddReturnOutput(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                           ,Str                           $oper_name # const char*
                                           ,int32                         $index # int
                                            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:768
#// Returns the number of return outputs added via
#// TF_ImportGraphDefOptionsAddReturnOutput().
#TF_CAPI_EXPORT extern int TF_ImportGraphDefOptionsNumReturnOutputs(
sub TF_ImportGraphDefOptionsNumReturnOutputs(TF_ImportGraphDefOptions $opts # const Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                             ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:774
#// Add an operation in `graph_def` to be returned via the `return_opers` output
#// parameter of TF_GraphImportGraphDef(). `oper_name` is copied and has no
#// lifetime requirements.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefOptionsAddReturnOperation(
sub TF_ImportGraphDefOptionsAddReturnOperation(TF_ImportGraphDefOptions      $opts # Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                              ,Str                           $oper_name # const char*
                                               ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:779
#// Returns the number of return operations added via
#// TF_ImportGraphDefOptionsAddReturnOperation().
#TF_CAPI_EXPORT extern int TF_ImportGraphDefOptionsNumReturnOperations(
sub TF_ImportGraphDefOptionsNumReturnOperations(TF_ImportGraphDefOptions $opts # const Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                                ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:790
#// Fetches the return outputs requested via
#// TF_ImportGraphDefOptionsAddReturnOutput(). The number of fetched outputs is
#// returned in `num_outputs`. The array of return outputs is returned in
#// `outputs`. `*outputs` is owned by and has the lifetime of `results`.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefResultsReturnOutputs(
sub TF_ImportGraphDefResultsReturnOutputs(TF_ImportGraphDefResults      $results # Typedef<TF_ImportGraphDefResults>->«TF_ImportGraphDefResults»*
                                         ,Pointer[int32]                $num_outputs # int*
                                         ,Pointer[TF_Output]            $outputs # Typedef<TF_Output>->«TF_Output»**
                                          ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:797
#// Fetches the return operations requested via
#// TF_ImportGraphDefOptionsAddReturnOperation(). The number of fetched
#// operations is returned in `num_opers`. The array of return operations is
#// returned in `opers`. `*opers` is owned by and has the lifetime of `results`.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefResultsReturnOperations(
sub TF_ImportGraphDefResultsReturnOperations(TF_ImportGraphDefResults      $results # Typedef<TF_ImportGraphDefResults>->«TF_ImportGraphDefResults»*
                                            ,Pointer[int32]                $num_opers # int*
                                            ,Pointer[Pointer[TF_Operation]]$opers # Typedef<TF_Operation>->«TF_Operation»***
                                             ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:809
#// Fetches any input mappings requested via
#// TF_ImportGraphDefOptionsAddInputMapping() that didn't appear in the GraphDef
#// and weren't used as input to any node in the imported graph def. The number
#// of fetched mappings is returned in `num_missing_unused_input_mappings`. The
#// array of each mapping's source node name is returned in `src_names`, and the
#// array of each mapping's source index is returned in `src_indexes`.
#//
#// `*src_names`, `*src_indexes`, and the memory backing each string in
#// `src_names` are owned by and have the lifetime of `results`.
#TF_CAPI_EXPORT extern void TF_ImportGraphDefResultsMissingUnusedInputMappings(
sub TF_ImportGraphDefResultsMissingUnusedInputMappings(TF_ImportGraphDefResults      $results # Typedef<TF_ImportGraphDefResults>->«TF_ImportGraphDefResults»*
                                                      ,Pointer[int32]                $num_missing_unused_input_mappings # int*
                                                      ,Pointer[Pointer[Str]]         $src_names # const char***
                                                      ,Pointer[Pointer[int32]]       $src_indexes # int**
                                                       ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:814
#// Deletes a results object returned by TF_GraphImportGraphDefWithResults().
#TF_CAPI_EXPORT extern void TF_DeleteImportGraphDefResults(
sub TF_DeleteImportGraphDefResults(TF_ImportGraphDefResults $results # Typedef<TF_ImportGraphDefResults>->«TF_ImportGraphDefResults»*
                                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:822
#// Import the graph serialized in `graph_def` into `graph`.  Returns nullptr and
#// a bad status on error. Otherwise, returns a populated
#// TF_ImportGraphDefResults instance. The returned instance must be deleted via
#// TF_DeleteImportGraphDefResults().
#TF_CAPI_EXPORT extern TF_ImportGraphDefResults*
#TF_GraphImportGraphDefWithResults(TF_Graph* graph, const TF_Buffer* graph_def,
sub TF_GraphImportGraphDefWithResults(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                                     ,TF_Buffer                     $graph_def # const Typedef<TF_Buffer>->«TF_Buffer»*
                                     ,TF_ImportGraphDefOptions      $options # const Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                     ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                      ) is native(LIB) returns TF_ImportGraphDefResults is export { * }

#-From ./include/tensorflow/c/c_api.h:833
#// Import the graph serialized in `graph_def` into `graph`.
#// Convenience function for when only return outputs are needed.
#//
#// `num_return_outputs` must be the number of return outputs added (i.e. the
#// result of TF_ImportGraphDefOptionsNumReturnOutputs()).  If
#// `num_return_outputs` is non-zero, `return_outputs` must be of length
#// `num_return_outputs`. Otherwise it can be null.
#TF_CAPI_EXPORT extern void TF_GraphImportGraphDefWithReturnOutputs(
sub TF_GraphImportGraphDefWithReturnOutputs(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                                           ,TF_Buffer                     $graph_def # const Typedef<TF_Buffer>->«TF_Buffer»*
                                           ,TF_ImportGraphDefOptions      $options # const Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                                           ,TF_Output                     $return_outputs # Typedef<TF_Output>->«TF_Output»*
                                           ,int32                         $num_return_outputs # int
                                           ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:840
#// Import the graph serialized in `graph_def` into `graph`.
#// Convenience function for when no results are needed.
#TF_CAPI_EXPORT extern void TF_GraphImportGraphDef(
sub TF_GraphImportGraphDef(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                          ,TF_Buffer                     $graph_def # const Typedef<TF_Buffer>->«TF_Buffer»*
                          ,TF_ImportGraphDefOptions      $options # const Typedef<TF_ImportGraphDefOptions>->«TF_ImportGraphDefOptions»*
                          ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                           ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:863
#// Adds a copy of function `func` and optionally its gradient function `grad`
#// to `g`. Once `func`/`grad` is added to `g`, it can be called by creating
#// an operation using the function's name.
#// Any changes to `func`/`grad` (including deleting it) done after this method
#// returns, won't affect the copy of `func`/`grad` in `g`.
#// If `func` or `grad` are already in `g`, TF_GraphCopyFunction has no
#// effect on them, but can establish the function->gradient relationship
#// between them if `func` does not already have a gradient. If `func` already
#// has a gradient different from `grad`, an error is returned.
#//
#// `func` must not be null.
#// If `grad` is null and `func` is not in `g`, `func` is added without a
#// gradient.
#// If `grad` is null and `func` is in `g`, TF_GraphCopyFunction is a noop.
#// `grad` must have appropriate signature as described in the doc of
#// GradientDef in tensorflow/core/framework/function.proto.
#//
#// If successful, status is set to OK and `func` and `grad` are added to `g`.
#// Otherwise, status is set to the encountered error and `g` is unmodified.
#TF_CAPI_EXPORT extern void TF_GraphCopyFunction(TF_Graph* g,
sub TF_GraphCopyFunction(TF_Graph                      $g # Typedef<TF_Graph>->«TF_Graph»*
                        ,TF_Function                   $func # const Typedef<TF_Function>->«TF_Function»*
                        ,TF_Function                   $grad # const Typedef<TF_Function>->«TF_Function»*
                        ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                         ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:869
#// Returns the number of TF_Functions registered in `g`.
#TF_CAPI_EXPORT extern int TF_GraphNumFunctions(TF_Graph* g);
sub TF_GraphNumFunctions(TF_Graph $g # Typedef<TF_Graph>->«TF_Graph»*
                         ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:882
#// Fills in `funcs` with the TF_Function* registered in `g`.
#// `funcs` must point to an array of TF_Function* of length at least
#// `max_func`. In usual usage, max_func should be set to the result of
#// TF_GraphNumFunctions(g). In this case, all the functions registered in
#// `g` will be returned. Else, an unspecified subset.
#//
#// If successful, returns the number of TF_Function* successfully set in
#// `funcs` and sets status to OK. The caller takes ownership of
#// all the returned TF_Functions. They must be deleted with TF_DeleteFunction.
#// On error, returns 0, sets status to the encountered error, and the contents
#// of funcs will be undefined.
#TF_CAPI_EXPORT extern int TF_GraphGetFunctions(TF_Graph* g, TF_Function** funcs,
sub TF_GraphGetFunctions(TF_Graph                      $g # Typedef<TF_Graph>->«TF_Graph»*
                        ,Pointer[TF_Function]          $funcs # Typedef<TF_Function>->«TF_Function»**
                        ,int32                         $max_func # int
                        ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                         ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:887
#TF_CAPI_EXPORT extern void TF_OperationToNodeDef(TF_Operation* oper,
sub TF_OperationToNodeDef(TF_Operation                  $oper # Typedef<TF_Operation>->«TF_Operation»*
                         ,TF_Buffer                     $output_node_def # Typedef<TF_Buffer>->«TF_Buffer»*
                         ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                          ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:933
#// Creates a TF_WhileParams for creating a while loop in `g`. `inputs` are
#// outputs that already exist in `g` used as initial values for the loop
#// variables.
#//
#// The returned TF_WhileParams will have all fields initialized except
#// `cond_output`, `body_outputs`, and `name`. The `body_outputs` buffer will be
#// allocated to size `ninputs`. The caller should build `cond_graph` and
#// `body_graph` starting from the inputs, and store the final outputs in
#// `cond_output` and `body_outputs`.
#//
#// If `status` is OK, the caller must call either TF_FinishWhile or
#// TF_AbortWhile on the returned TF_WhileParams. If `status` isn't OK, the
#// returned TF_WhileParams is not valid, and the caller should not call
#// TF_FinishWhile() or TF_AbortWhile().
#//
#// Missing functionality (TODO):
#// - Gradients
#// - Reference-type inputs
#// - Directly referencing external tensors from the cond/body graphs (this is
#//   possible in the Python API)
#TF_CAPI_EXPORT extern TF_WhileParams TF_NewWhile(TF_Graph* g, TF_Output* inputs,
sub TF_NewWhile(TF_Graph                      $g # Typedef<TF_Graph>->«TF_Graph»*
               ,TF_Output                     $inputs # Typedef<TF_Output>->«TF_Output»*
               ,int32                         $ninputs # int
               ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                ) is native(LIB) returns TF_WhileParams is export { * }

#-From ./include/tensorflow/c/c_api.h:945
#// Builds the while loop specified by `params` and returns the output tensors of
#// the while loop in `outputs`. `outputs` should be allocated to size
#// `params.ninputs`.
#//
#// `params` is no longer valid once this returns.
#//
#// Either this or TF_AbortWhile() must be called after a successful
#// TF_NewWhile() call.
#TF_CAPI_EXPORT extern void TF_FinishWhile(const TF_WhileParams* params,
sub TF_FinishWhile(TF_WhileParams                $params # const Typedef<TF_WhileParams>->«TF_WhileParams»*
                  ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                  ,TF_Output                     $outputs # Typedef<TF_Output>->«TF_Output»*
                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:952
#// Frees `params`s resources without building a while loop. `params` is no
#// longer valid after this returns. Either this or TF_FinishWhile() must be
#// called after a successful TF_NewWhile() call.
#TF_CAPI_EXPORT extern void TF_AbortWhile(const TF_WhileParams* params);
sub TF_AbortWhile(TF_WhileParams $params # const Typedef<TF_WhileParams>->«TF_WhileParams»*
                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:975
#// Adds operations to compute the partial derivatives of sum of `y`s w.r.t `x`s,
#// i.e., d(y_1 + y_2 + ...)/dx_1, d(y_1 + y_2 + ...)/dx_2...
#//
#// `dx` are used as initial gradients (which represent the symbolic partial
#// derivatives of some loss function `L` w.r.t. `y`).
#// `dx` must be nullptr or have size `ny`.
#// If `dx` is nullptr, the implementation will use dx of `OnesLike` for all
#// shapes in `y`.
#// The partial derivatives are returned in `dy`. `dy` should be allocated to
#// size `nx`.
#//
#// Gradient nodes are automatically named under the "gradients/" prefix. To
#// guarantee name uniqueness, subsequent calls to the same graph will
#// append an incremental tag to the prefix: "gradients_1/", "gradients_2/", ...
#// See TF_AddGradientsWithPrefix, which provides a means to specify a custom
#// name prefix for operations added to a graph to compute the gradients.
#//
#// WARNING: This function does not yet support all the gradients that python
#// supports. See
#// https://www.tensorflow.org/code/tensorflow/cc/gradients/README.md
#// for instructions on how to add C++ more gradients.
#TF_CAPI_EXPORT void TF_AddGradients(TF_Graph* g, TF_Output* y, int ny,
sub TF_AddGradients(TF_Graph                      $g # Typedef<TF_Graph>->«TF_Graph»*
                   ,TF_Output                     $y # Typedef<TF_Output>->«TF_Output»*
                   ,int32                         $ny # int
                   ,TF_Output                     $x # Typedef<TF_Output>->«TF_Output»*
                   ,int32                         $nx # int
                   ,TF_Output                     $dx # Typedef<TF_Output>->«TF_Output»*
                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                   ,TF_Output                     $dy # Typedef<TF_Output>->«TF_Output»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1000
#// Adds operations to compute the partial derivatives of sum of `y`s w.r.t `x`s,
#// i.e., d(y_1 + y_2 + ...)/dx_1, d(y_1 + y_2 + ...)/dx_2...
#// This is a variant of TF_AddGradients that allows to caller to pass a custom
#// name prefix to the operations added to a graph to compute the gradients.
#//
#// `dx` are used as initial gradients (which represent the symbolic partial
#// derivatives of some loss function `L` w.r.t. `y`).
#// `dx` must be nullptr or have size `ny`.
#// If `dx` is nullptr, the implementation will use dx of `OnesLike` for all
#// shapes in `y`.
#// The partial derivatives are returned in `dy`. `dy` should be allocated to
#// size `nx`.
#// `prefix` names the scope into which all gradients operations are being added.
#// `prefix` must be unique within the provided graph otherwise this operation
#// will fail. If `prefix` is nullptr, the default prefixing behaviour takes
#// place, see TF_AddGradients for more details.
#//
#// WARNING: This function does not yet support all the gradients that python
#// supports. See
#// https://www.tensorflow.org/code/tensorflow/cc/gradients/README.md
#// for instructions on how to add C++ more gradients.
#TF_CAPI_EXPORT void TF_AddGradientsWithPrefix(TF_Graph* g, const char* prefix,
sub TF_AddGradientsWithPrefix(TF_Graph                      $g # Typedef<TF_Graph>->«TF_Graph»*
                             ,Str                           $prefix # const char*
                             ,TF_Output                     $y # Typedef<TF_Output>->«TF_Output»*
                             ,int32                         $ny # int
                             ,TF_Output                     $x # Typedef<TF_Output>->«TF_Output»*
                             ,int32                         $nx # int
                             ,TF_Output                     $dx # Typedef<TF_Output>->«TF_Output»*
                             ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                             ,TF_Output                     $dy # Typedef<TF_Output>->«TF_Output»*
                              ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1088
#// Create a TF_Function from a TF_Graph
#//
#// Params:
#//  fn_body - the graph whose operations (or subset of whose operations) will be
#//            converted to TF_Function.
#//  fn_name - the name of the new TF_Function. Should match the operation
#//            name (OpDef.name) regexp [A-Z][A-Za-z0-9_.\\-/]*.
#//            If `append_hash_to_fn_name` is false, `fn_name` must be distinct
#//            from other function and operation names (at least those
#//            registered in graphs where this function will be used).
#//  append_hash_to_fn_name - Must be 0 or 1. If set to 1, the actual name
#//                           of the function will be `fn_name` appended with
#//                           '_<hash_of_this_function's_definition>'.
#//                           If set to 0, the function's name will be `fn_name`.
#//  num_opers - `num_opers` contains the number of elements in the `opers` array
#//              or a special value of -1 meaning that no array is given.
#//              The distinction between an empty array of operations and no
#//              array of operations is necessary to distinguish the case of
#//              creating a function with no body (e.g. identity or permutation)
#//              and the case of creating a function whose body contains all
#//              the nodes in the graph (except for the automatic skipping, see
#//              below).
#//  opers - Array of operations to become the body of the function or null.
#//          - If no array is given (`num_opers`  = -1), all the
#//          operations in `fn_body` will become part of the function
#//          except operations referenced in `inputs`. These operations
#//          must have a single output (these operations are typically
#//          placeholders created for the sole purpose of representing
#//          an input. We can relax this constraint if there are
#//          compelling use cases).
#//          - If an array is given (`num_opers` >= 0), all operations
#//          in it will become part of the function. In particular, no
#//          automatic skipping of dummy input operations is performed.
#//  ninputs - number of elements in `inputs` array
#//  inputs - array of TF_Outputs that specify the inputs to the function.
#//           If `ninputs` is zero (the function takes no inputs), `inputs`
#//           can be null. The names used for function inputs are normalized
#//           names of the operations (usually placeholders) pointed to by
#//           `inputs`. These operation names should start with a letter.
#//           Normalization will convert all letters to lowercase and
#//           non-alphanumeric characters to '_' to make resulting names match
#//           the "[a-z][a-z0-9_]*" pattern for operation argument names.
#//           `inputs` cannot contain the same tensor twice.
#//  noutputs - number of elements in `outputs` array
#//  outputs - array of TF_Outputs that specify the outputs of the function.
#//            If `noutputs` is zero (the function returns no outputs), `outputs`
#//            can be null. `outputs` can contain the same tensor more than once.
#//  output_names - The names of the function's outputs. `output_names` array
#//                 must either have the same length as `outputs`
#//                 (i.e. `noutputs`) or be null. In the former case,
#//                 the names should match the regular expression for ArgDef
#//                 names - "[a-z][a-z0-9_]*". In the latter case,
#//                 names for outputs will be generated automatically.
#//  opts - various options for the function, e.g. XLA's inlining control.
#//  description - optional human-readable description of this function.
#//  status - Set to OK on success and an appropriate error on failure.
#//
#// Note that when the same TF_Output is listed as both an input and an output,
#// the corresponding function's output will equal to this input,
#// instead of the original node's output.
#//
#// Callers must also satisfy the following constraints:
#// - `inputs` cannot refer to TF_Outputs within a control flow context. For
#//   example, one cannot use the output of "switch" node as input.
#// - `inputs` and `outputs` cannot have reference types. Reference types are
#//   not exposed through C API and are being replaced with Resources. We support
#//   reference types inside function's body to support legacy code. Do not
#//   use them in new code.
#// - Every node in the function's body must have all of its inputs (including
#//   control inputs). In other words, for every node in the body, each input
#//   must be either listed in `inputs` or must come from another node in
#//   the body. In particular, it is an error to have a control edge going from
#//   a node outside of the body into a node in the body. This applies to control
#//   edges going from nodes referenced in `inputs` to nodes in the body when
#//   the former nodes are not in the body (automatically skipped or not
#//   included in explicitly specified body).
#//
#// Returns:
#//  On success, a newly created TF_Function instance. It must be deleted by
#//  calling TF_DeleteFunction.
#//
#//  On failure, null.
#TF_CAPI_EXPORT extern TF_Function* TF_GraphToFunction(
sub TF_GraphToFunction(TF_Graph                      $fn_body # const Typedef<TF_Graph>->«TF_Graph»*
                      ,Str                           $fn_name # const char*
                      ,uint8                         $append_hash_to_fn_name # unsigned char
                      ,int32                         $num_opers # int
                      ,Pointer[TF_Operation]         $opers # const const Typedef<TF_Operation>->«TF_Operation»**
                      ,int32                         $ninputs # int
                      ,TF_Output                     $inputs # const Typedef<TF_Output>->«TF_Output»*
                      ,int32                         $noutputs # int
                      ,TF_Output                     $outputs # const Typedef<TF_Output>->«TF_Output»*
                      ,Pointer[Str]                  $output_names # const const char**
                      ,TF_FunctionOptions            $opts # const Typedef<TF_FunctionOptions>->«TF_FunctionOptions»*
                      ,Str                           $description # const char*
                      ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                       ) is native(LIB) returns TF_Function is export { * }

#-From ./include/tensorflow/c/c_api.h:1108
#// Similar to TF_GraphToFunction but allows specifying control outputs of the
#// function.
#//
#//  The arguments of TF_GraphToFunction have the same meaning, but the new
#//  arguments are as follows:
#//
#//    ncontrol_outputs: Number of control outputs of the function.
#//    control_outputs: vector of TF_Operation objects to be marked as control
#//      outputs of the function. Operations marked as control outputs are
#//      guaranteed to execute.
#//    control_output_names: Optional. If not nullptr, vector of strings, one
#//      per control output, with their names to be added to the function's
#//      OpDef.
#TF_CAPI_EXPORT extern TF_Function* TF_GraphToFunctionWithControlOutputs(
sub TF_GraphToFunctionWithControlOutputs(TF_Graph                      $fn_body # const Typedef<TF_Graph>->«TF_Graph»*
                                        ,Str                           $fn_name # const char*
                                        ,uint8                         $append_hash_to_fn_name # unsigned char
                                        ,int32                         $num_opers # int
                                        ,Pointer[TF_Operation]         $opers # const const Typedef<TF_Operation>->«TF_Operation»**
                                        ,int32                         $ninputs # int
                                        ,TF_Output                     $inputs # const Typedef<TF_Output>->«TF_Output»*
                                        ,int32                         $noutputs # int
                                        ,TF_Output                     $outputs # const Typedef<TF_Output>->«TF_Output»*
                                        ,Pointer[Str]                  $output_names # const const char**
                                        ,int32                         $ncontrol_outputs # int
                                        ,Pointer[TF_Operation]         $control_outputs # const const Typedef<TF_Operation>->«TF_Operation»**
                                        ,Pointer[Str]                  $control_output_names # const const char**
                                        ,TF_FunctionOptions            $opts # const Typedef<TF_FunctionOptions>->«TF_FunctionOptions»*
                                        ,Str                           $description # const char*
                                        ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                         ) is native(LIB) returns TF_Function is export { * }

#-From ./include/tensorflow/c/c_api.h:1120
#// Returns the name of the graph function.
#// The return value points to memory that is only usable until the next
#// mutation to *func.
#TF_CAPI_EXPORT extern const char* TF_FunctionName(TF_Function* func);
sub TF_FunctionName(TF_Function $func # Typedef<TF_Function>->«TF_Function»*
                    ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:1128
#// Write out a serialized representation of `func` (as a FunctionDef protocol
#// message) to `output_func_def` (allocated by TF_NewBuffer()).
#// `output_func_def`'s underlying buffer will be freed when TF_DeleteBuffer()
#// is called.
#//
#// May fail on very large graphs in the future.
#TF_CAPI_EXPORT extern void TF_FunctionToFunctionDef(TF_Function* func,
sub TF_FunctionToFunctionDef(TF_Function                   $func # Typedef<TF_Function>->«TF_Function»*
                            ,TF_Buffer                     $output_func_def # Typedef<TF_Buffer>->«TF_Buffer»*
                            ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                             ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1140
#// Construct and return the function whose FunctionDef representation is
#// serialized in `proto`. `proto_len` must equal the number of bytes
#// pointed to by `proto`.
#// Returns:
#//  On success, a newly created TF_Function instance. It must be deleted by
#//  calling TF_DeleteFunction.
#//
#//  On failure, null.
#TF_CAPI_EXPORT extern TF_Function* TF_FunctionImportFunctionDef(
sub TF_FunctionImportFunctionDef(Pointer                       $proto # const void*
                                ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB) returns TF_Function is export { * }

#-From ./include/tensorflow/c/c_api.h:1148
#// Sets function attribute named `attr_name` to value stored in `proto`.
#// If this attribute is already set to another value, it is overridden.
#// `proto` should point to a sequence of bytes of length `proto_len`
#// representing a binary serialization of an AttrValue protocol
#// buffer.
#TF_CAPI_EXPORT extern void TF_FunctionSetAttrValueProto(TF_Function* func,
sub TF_FunctionSetAttrValueProto(TF_Function                   $func # Typedef<TF_Function>->«TF_Function»*
                                ,Str                           $attr_name # const char*
                                ,Pointer                       $proto # const void*
                                ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1157
#// Sets `output_attr_value` to the binary-serialized AttrValue proto
#// representation of the value of the `attr_name` attr of `func`.
#// If `attr_name` attribute is not present, status is set to an error.
#TF_CAPI_EXPORT extern void TF_FunctionGetAttrValueProto(
sub TF_FunctionGetAttrValueProto(TF_Function                   $func # Typedef<TF_Function>->«TF_Function»*
                                ,Str                           $attr_name # const char*
                                ,TF_Buffer                     $output_attr_value # Typedef<TF_Buffer>->«TF_Buffer»*
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1164
#// Frees the memory used by the `func` struct.
#// TF_DeleteFunction is a noop if `func` is null.
#// Deleting a function does not remove it from any graphs it was copied to.
#TF_CAPI_EXPORT extern void TF_DeleteFunction(TF_Function* func);
sub TF_DeleteFunction(TF_Function $func # Typedef<TF_Function>->«TF_Function»*
                      ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1174
#// Attempts to evaluate `output`. This will only be possible if `output` doesn't
#// depend on any graph inputs (this function is safe to call if this isn't the
#// case though).
#//
#// If the evaluation is successful, this function returns true and `output`s
#// value is returned in `result`. Otherwise returns false. An error status is
#// returned if something is wrong with the graph or input. Note that this may
#// return false even if no error status is set.
#TF_CAPI_EXPORT extern unsigned char TF_TryEvaluateConstant(TF_Graph* graph,
sub TF_TryEvaluateConstant(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                          ,TF_Output                     $output # Typedef<TF_Output>->«TF_Output»
                          ,Pointer[TF_Tensor]            $result # Typedef<TF_Tensor>->«TF_Tensor»**
                          ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                           ) is native(LIB) returns uint8 is export { * }

#-From ./include/tensorflow/c/c_api.h:1193
#// Return a new execution session with the associated graph, or NULL on
#// error. Does not take ownership of any input parameters.
#//
#// *`graph` must be a valid graph (not deleted or nullptr). `graph` will be be
#// kept alive for the lifetime of the returned TF_Session. New nodes can still
#// be added to `graph` after this call.
#TF_CAPI_EXPORT extern TF_Session* TF_NewSession(TF_Graph* graph,
sub TF_NewSession(TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                 ,TF_SessionOptions             $opts # const Typedef<TF_SessionOptions>->«TF_SessionOptions»*
                 ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                  ) is native(LIB) returns TF_Session is export { * }

#-From ./include/tensorflow/c/c_api.h:1211
#// This function creates a new TF_Session (which is created on success) using
#// `session_options`, and then initializes state (restoring tensors and other
#// assets) using `run_options`.
#//
#// Any NULL and non-NULL value combinations for (`run_options, `meta_graph_def`)
#// are valid.
#//
#// - `export_dir` must be set to the path of the exported SavedModel.
#// - `tags` must include the set of tags used to identify one MetaGraphDef in
#//    the SavedModel.
#// - `graph` must be a graph newly allocated with TF_NewGraph().
#//
#// If successful, populates `graph` with the contents of the Graph and
#// `meta_graph_def` with the MetaGraphDef of the loaded model.
#TF_CAPI_EXPORT extern TF_Session* TF_LoadSessionFromSavedModel(
sub TF_LoadSessionFromSavedModel(TF_SessionOptions             $session_options # const Typedef<TF_SessionOptions>->«TF_SessionOptions»*
                                ,TF_Buffer                     $run_options # const Typedef<TF_Buffer>->«TF_Buffer»*
                                ,Str                           $export_dir # const char*
                                ,Pointer[Str]                  $tags # const const char**
                                ,int32                         $tags_len # int
                                ,TF_Graph                      $graph # Typedef<TF_Graph>->«TF_Graph»*
                                ,TF_Buffer                     $meta_graph_def # Typedef<TF_Buffer>->«TF_Buffer»*
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB) returns TF_Session is export { * }

#-From ./include/tensorflow/c/c_api.h:1220
#// Close a session.
#//
#// Contacts any other processes associated with the session, if applicable.
#// May not be called after TF_DeleteSession().
#TF_CAPI_EXPORT extern void TF_CloseSession(TF_Session*, TF_Status* status);
sub TF_CloseSession(TF_Session                     # Typedef<TF_Session>->«TF_Session»*
                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1228
#// Destroy a session object.
#//
#// Even if error information is recorded in *status, this call discards all
#// local resources associated with the session.  The session may not be used
#// during or after this call (and the session drops its reference to the
#// corresponding graph).
#TF_CAPI_EXPORT extern void TF_DeleteSession(TF_Session*, TF_Status* status);
sub TF_DeleteSession(TF_Session                     # Typedef<TF_Session>->«TF_Session»*
                    ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                     ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1254
#//      non-NULL, in which case it must point to an empty, freshly allocated
#//      `TF_Buffer` that may be updated to contain the serialized representation
#//      of a `RunMetadata` protocol buffer.
#//
#// The caller retains ownership of `input_values` (which can be deleted using
#// TF_DeleteTensor). The caller also retains ownership of `run_options` and/or
#// `run_metadata` (when not NULL) and should manually call TF_DeleteBuffer on
#// them.
#//
#// On success, the tensors corresponding to outputs[0,noutputs-1] are placed in
#// output_values[]. Ownership of the elements of output_values[] is transferred
#// to the caller, which must eventually call TF_DeleteTensor on them.
#//
#// On failure, output_values[] contains NULLs.
#TF_CAPI_EXPORT extern void TF_SessionRun(
sub TF_SessionRun(TF_Session                    $session # Typedef<TF_Session>->«TF_Session»*
                 ,TF_Buffer                     $run_options # const Typedef<TF_Buffer>->«TF_Buffer»*
                 ,TF_Output                     $inputs # const Typedef<TF_Output>->«TF_Output»*
                 ,Pointer[TF_Tensor]            $input_values # const Typedef<TF_Tensor>->«TF_Tensor»**
                 ,int32                         $ninputs # int
                 ,TF_Output                     $outputs # const Typedef<TF_Output>->«TF_Output»*
                 ,Pointer[TF_Tensor]            $output_values # Typedef<TF_Tensor>->«TF_Tensor»**
                 ,int32                         $noutputs # int
                 ,Pointer[TF_Operation]         $target_opers # const const Typedef<TF_Operation>->«TF_Operation»**
                 ,int32                         $ntargets # int
                 ,TF_Buffer                     $run_metadata # Typedef<TF_Buffer>->«TF_Buffer»*
                 ,TF_Status                      # Typedef<TF_Status>->«TF_Status»*
                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1278
#// Set up the graph with the intended feeds (inputs) and fetches (outputs) for a
#// sequence of partial run calls.
#//
#// On success, returns a handle that is used for subsequent PRun calls. The
#// handle should be deleted with TF_DeletePRunHandle when it is no longer
#// needed.
#//
#// On failure, out_status contains a tensorflow::Status with an error
#// message. *handle is set to nullptr.
#TF_CAPI_EXPORT extern void TF_SessionPRunSetup(
sub TF_SessionPRunSetup(TF_Session                     # Typedef<TF_Session>->«TF_Session»*
                       ,TF_Output                     $inputs # const Typedef<TF_Output>->«TF_Output»*
                       ,int32                         $ninputs # int
                       ,TF_Output                     $outputs # const Typedef<TF_Output>->«TF_Output»*
                       ,int32                         $noutputs # int
                       ,Pointer[TF_Operation]         $target_opers # const const Typedef<TF_Operation>->«TF_Operation»**
                       ,int32                         $ntargets # int
                       ,Pointer[Str]                  $handle # const char**
                       ,TF_Status                      # Typedef<TF_Status>->«TF_Status»*
                        ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1293
#// Continue to run the graph with additional feeds and fetches. The
#// execution state is uniquely identified by the handle.
#TF_CAPI_EXPORT extern void TF_SessionPRun(
sub TF_SessionPRun(TF_Session                     # Typedef<TF_Session>->«TF_Session»*
                  ,Str                           $handle # const char*
                  ,TF_Output                     $inputs # const Typedef<TF_Output>->«TF_Output»*
                  ,Pointer[TF_Tensor]            $input_values # const Typedef<TF_Tensor>->«TF_Tensor»**
                  ,int32                         $ninputs # int
                  ,TF_Output                     $outputs # const Typedef<TF_Output>->«TF_Output»*
                  ,Pointer[TF_Tensor]            $output_values # Typedef<TF_Tensor>->«TF_Tensor»**
                  ,int32                         $noutputs # int
                  ,Pointer[TF_Operation]         $target_opers # const const Typedef<TF_Operation>->«TF_Operation»**
                  ,int32                         $ntargets # int
                  ,TF_Status                      # Typedef<TF_Status>->«TF_Status»*
                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1306
#// Deletes a handle allocated by TF_SessionPRunSetup.
#// Once called, no more calls to TF_SessionPRun should be made.
#TF_CAPI_EXPORT extern void TF_DeletePRunHandle(const char* handle);
sub TF_DeletePRunHandle(Str $handle # const char*
                        ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1315
#TF_CAPI_EXPORT extern TF_DeprecatedSession* TF_NewDeprecatedSession(
sub TF_NewDeprecatedSession(TF_SessionOptions              # const Typedef<TF_SessionOptions>->«TF_SessionOptions»*
                           ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                            ) is native(LIB) returns TF_DeprecatedSession is export { * }

#-From ./include/tensorflow/c/c_api.h:1317
#TF_CAPI_EXPORT extern void TF_CloseDeprecatedSession(TF_DeprecatedSession*,
sub TF_CloseDeprecatedSession(TF_DeprecatedSession           # Typedef<TF_DeprecatedSession>->«TF_DeprecatedSession»*
                             ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                              ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1319
#TF_CAPI_EXPORT extern void TF_DeleteDeprecatedSession(TF_DeprecatedSession*,
sub TF_DeleteDeprecatedSession(TF_DeprecatedSession           # Typedef<TF_DeprecatedSession>->«TF_DeprecatedSession»*
                              ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                               ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1321
#TF_CAPI_EXPORT extern void TF_Reset(const TF_SessionOptions* opt,
sub TF_Reset(TF_SessionOptions             $opt # const Typedef<TF_SessionOptions>->«TF_SessionOptions»*
            ,Pointer[Str]                  $containers # const char**
            ,int32                         $ncontainers # int
            ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
             ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1328
#// Treat the bytes proto[0,proto_len-1] as a serialized GraphDef and
#// add the nodes in that GraphDef to the graph for the session.
#//
#// Prefer use of TF_Session and TF_GraphImportGraphDef over this.
#TF_CAPI_EXPORT extern void TF_ExtendGraph(TF_DeprecatedSession*,
sub TF_ExtendGraph(TF_DeprecatedSession           # Typedef<TF_DeprecatedSession>->«TF_DeprecatedSession»*
                  ,Pointer                       $proto # const void*
                  ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                  ,TF_Status                      # Typedef<TF_Status>->«TF_Status»*
                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1333
#// See TF_SessionRun() above.
#TF_CAPI_EXPORT extern void TF_Run(TF_DeprecatedSession*,
sub TF_Run(TF_DeprecatedSession           # Typedef<TF_DeprecatedSession>->«TF_DeprecatedSession»*
          ,TF_Buffer                     $run_options # const Typedef<TF_Buffer>->«TF_Buffer»*
          ,Pointer[Str]                  $input_names # const char**
          ,Pointer[TF_Tensor]            $inputs # Typedef<TF_Tensor>->«TF_Tensor»**
          ,int32                         $ninputs # int
          ,Pointer[Str]                  $output_names # const char**
          ,Pointer[TF_Tensor]            $outputs # Typedef<TF_Tensor>->«TF_Tensor»**
          ,int32                         $noutputs # int
          ,Pointer[Str]                  $target_oper_names # const char**
          ,int32                         $ntargets # int
          ,TF_Buffer                     $run_metadata # Typedef<TF_Buffer>->«TF_Buffer»*
          ,TF_Status                      # Typedef<TF_Status>->«TF_Status»*
           ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1342
#// See TF_SessionPRunSetup() above.
#TF_CAPI_EXPORT extern void TF_PRunSetup(TF_DeprecatedSession*,
sub TF_PRunSetup(TF_DeprecatedSession           # Typedef<TF_DeprecatedSession>->«TF_DeprecatedSession»*
                ,Pointer[Str]                  $input_names # const char**
                ,int32                         $ninputs # int
                ,Pointer[Str]                  $output_names # const char**
                ,int32                         $noutputs # int
                ,Pointer[Str]                  $target_oper_names # const char**
                ,int32                         $ntargets # int
                ,Pointer[Str]                  $handle # const char**
                ,TF_Status                      # Typedef<TF_Status>->«TF_Status»*
                 ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1350
#// See TF_SessionPRun above.
#TF_CAPI_EXPORT extern void TF_PRun(TF_DeprecatedSession*, const char* handle,
sub TF_PRun(TF_DeprecatedSession           # Typedef<TF_DeprecatedSession>->«TF_DeprecatedSession»*
           ,Str                           $handle # const char*
           ,Pointer[Str]                  $input_names # const char**
           ,Pointer[TF_Tensor]            $inputs # Typedef<TF_Tensor>->«TF_Tensor»**
           ,int32                         $ninputs # int
           ,Pointer[Str]                  $output_names # const char**
           ,Pointer[TF_Tensor]            $outputs # Typedef<TF_Tensor>->«TF_Tensor»**
           ,int32                         $noutputs # int
           ,Pointer[Str]                  $target_oper_names # const char**
           ,int32                         $ntargets # int
           ,TF_Status                      # Typedef<TF_Status>->«TF_Status»*
            ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1363
#// Lists all devices in a TF_Session.
#//
#// Caller takes ownership of the returned TF_DeviceList* which must eventually
#// be freed with a call to TF_DeleteDeviceList.
#TF_CAPI_EXPORT extern TF_DeviceList* TF_SessionListDevices(TF_Session* session,
sub TF_SessionListDevices(TF_Session                    $session # Typedef<TF_Session>->«TF_Session»*
                         ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                          ) is native(LIB) returns TF_DeviceList is export { * }

#-From ./include/tensorflow/c/c_api.h:1370
#// Lists all devices in a TF_Session.
#//
#// Caller takes ownership of the returned TF_DeviceList* which must eventually
#// be freed with a call to TF_DeleteDeviceList.
#TF_CAPI_EXPORT extern TF_DeviceList* TF_DeprecatedSessionListDevices(
sub TF_DeprecatedSessionListDevices(TF_DeprecatedSession          $session # Typedef<TF_DeprecatedSession>->«TF_DeprecatedSession»*
                                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                    ) is native(LIB) returns TF_DeviceList is export { * }

#-From ./include/tensorflow/c/c_api.h:1374
#// Deallocates the device list.
#TF_CAPI_EXPORT extern void TF_DeleteDeviceList(TF_DeviceList* list);
sub TF_DeleteDeviceList(TF_DeviceList $list # Typedef<TF_DeviceList>->«TF_DeviceList»*
                        ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1377
#// Counts the number of elements in the device list.
#TF_CAPI_EXPORT extern int TF_DeviceListCount(const TF_DeviceList* list);
sub TF_DeviceListCount(TF_DeviceList $list # const Typedef<TF_DeviceList>->«TF_DeviceList»*
                       ) is native(LIB) returns int32 is export { * }

#-From ./include/tensorflow/c/c_api.h:1386
#// Retrieves the full name of the device (e.g. /job:worker/replica:0/...)
#// The return value will be a pointer to a null terminated string. The caller
#// must not modify or delete the string. It will be deallocated upon a call to
#// TF_DeleteDeviceList.
#//
#// If index is out of bounds, an error code will be set in the status object,
#// and a null pointer will be returned.
#TF_CAPI_EXPORT extern const char* TF_DeviceListName(const TF_DeviceList* list,
sub TF_DeviceListName(TF_DeviceList                 $list # const Typedef<TF_DeviceList>->«TF_DeviceList»*
                     ,int32                         $index # int
                     ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                      ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:1397
#// Retrieves the type of the device at the given index.
#//
#// The caller must not modify or delete the string. It will be deallocated upon
#// a call to TF_DeleteDeviceList.
#//
#// If index is out of bounds, an error code will be set in the status object,
#// and a null pointer will be returned.
#TF_CAPI_EXPORT extern const char* TF_DeviceListType(const TF_DeviceList* list,
sub TF_DeviceListType(TF_DeviceList                 $list # const Typedef<TF_DeviceList>->«TF_DeviceList»*
                     ,int32                         $index # int
                     ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                      ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:1405
#// Retrieve the amount of memory associated with a given device.
#//
#// If index is out of bounds, an error code will be set in the status object,
#// and -1 will be returned.
#TF_CAPI_EXPORT extern int64_t TF_DeviceListMemoryBytes(
sub TF_DeviceListMemoryBytes(TF_DeviceList                 $list # const Typedef<TF_DeviceList>->«TF_DeviceList»*
                            ,int32                         $index # int
                            ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                             ) is native(LIB) returns int64 is export { * }

#-From ./include/tensorflow/c/c_api.h:1412
#// Retrieve the incarnation number of a given device.
#//
#// If index is out of bounds, an error code will be set in the status object,
#// and 0 will be returned.
#TF_CAPI_EXPORT extern uint64_t TF_DeviceListIncarnation(
sub TF_DeviceListIncarnation(TF_DeviceList                 $list # const Typedef<TF_DeviceList>->«TF_DeviceList»*
                            ,int32                         $index # int
                            ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                             ) is native(LIB) returns uint64 is export { * }

#-From ./include/tensorflow/c/c_api.h:1432
#// Load the library specified by library_filename and register the ops and
#// kernels present in that library.
#//
#// Pass "library_filename" to a platform-specific mechanism for dynamically
#// loading a library. The rules for determining the exact location of the
#// library are platform-specific and are not documented here.
#//
#// On success, place OK in status and return the newly created library handle.
#// The caller owns the library handle.
#//
#// On failure, place an error status in status and return NULL.
#TF_CAPI_EXPORT extern TF_Library* TF_LoadLibrary(const char* library_filename,
sub TF_LoadLibrary(Str                           $library_filename # const char*
                  ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                   ) is native(LIB) returns TF_Library is export { * }

#-From ./include/tensorflow/c/c_api.h:1440
#// Get the OpList of OpDefs defined in the library pointed by lib_handle.
#//
#// Returns a TF_Buffer. The memory pointed to by the result is owned by
#// lib_handle. The data in the buffer will be the serialized OpList proto for
#// ops defined in the library.
#TF_CAPI_EXPORT extern TF_Buffer TF_GetOpList(TF_Library* lib_handle);
sub TF_GetOpList(TF_Library $lib_handle # Typedef<TF_Library>->«TF_Library»*
                 ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:1444
#// Frees the memory associated with the library handle.
#// Does NOT unload the library.
#TF_CAPI_EXPORT extern void TF_DeleteLibraryHandle(TF_Library* lib_handle);
sub TF_DeleteLibraryHandle(TF_Library $lib_handle # Typedef<TF_Library>->«TF_Library»*
                           ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1452
#// Get the OpList of all OpDefs defined in this address space.
#// Returns a TF_Buffer, ownership of which is transferred to the caller
#// (and can be freed using TF_DeleteBuffer).
#//
#// The data in the buffer will be the serialized OpList proto for ops registered
#// in this address space.
#TF_CAPI_EXPORT extern TF_Buffer* TF_GetAllOpList(void);
sub TF_GetAllOpList(
                    ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:1472
#// Creates a new TF_ApiDefMap instance.
#//
#// Params:
#//  op_list_buffer - TF_Buffer instance containing serialized OpList
#//    protocol buffer. (See
#//    https://www.tensorflow.org/code/tensorflow/core/framework/op_def.proto
#//    for the OpList proto definition).
#//  status - Set to OK on success and an appropriate error on failure.
#TF_CAPI_EXPORT extern TF_ApiDefMap* TF_NewApiDefMap(TF_Buffer* op_list_buffer,
sub TF_NewApiDefMap(TF_Buffer                     $op_list_buffer # Typedef<TF_Buffer>->«TF_Buffer»*
                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                    ) is native(LIB) returns TF_ApiDefMap is export { * }

#-From ./include/tensorflow/c/c_api.h:1476
#// Deallocates a TF_ApiDefMap.
#TF_CAPI_EXPORT extern void TF_DeleteApiDefMap(TF_ApiDefMap* apimap);
sub TF_DeleteApiDefMap(TF_ApiDefMap $apimap # Typedef<TF_ApiDefMap>->«TF_ApiDefMap»*
                       ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1486
#// Add ApiDefs to the map.
#//
#// `text` corresponds to a text representation of an ApiDefs protocol message.
#// (https://www.tensorflow.org/code/tensorflow/core/framework/api_def.proto).
#//
#// The provided ApiDefs will be merged with existing ones in the map, with
#// precedence given to the newly added version in case of conflicts with
#// previous calls to TF_ApiDefMapPut.
#TF_CAPI_EXPORT extern void TF_ApiDefMapPut(TF_ApiDefMap* api_def_map,
sub TF_ApiDefMapPut(TF_ApiDefMap                  $api_def_map # Typedef<TF_ApiDefMap>->«TF_ApiDefMap»*
                   ,Str                           $text # const char*
                   ,size_t                        $text_len # Typedef<size_t>->«long unsigned int»
                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1492
#// Returns a serialized ApiDef protocol buffer for the TensorFlow operation
#// named `name`.
#TF_CAPI_EXPORT extern TF_Buffer* TF_ApiDefMapGet(TF_ApiDefMap* api_def_map,
sub TF_ApiDefMapGet(TF_ApiDefMap                  $api_def_map # Typedef<TF_ApiDefMap>->«TF_ApiDefMap»*
                   ,Str                           $name # const char*
                   ,size_t                        $name_len # Typedef<size_t>->«long unsigned int»
                   ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                    ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:1502
#// Returns a serialized KernelList protocol buffer containing KernelDefs for all
#// registered kernels.
#TF_CAPI_EXPORT extern TF_Buffer* TF_GetAllRegisteredKernels(TF_Status* status);
sub TF_GetAllRegisteredKernels(TF_Status $status # Typedef<TF_Status>->«TF_Status»*
                               ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:1506
#// Returns a serialized KernelList protocol buffer containing KernelDefs for all
#// kernels registered for the operation named `name`.
#TF_CAPI_EXPORT extern TF_Buffer* TF_GetRegisteredKernelsForOp(
sub TF_GetRegisteredKernelsForOp(Str                           $name # const char*
                                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                                 ) is native(LIB) returns TF_Buffer is export { * }

#-From ./include/tensorflow/c/c_api.h:1526
#// Creates a new in-process TensorFlow server configured using a serialized
#// ServerDef protocol buffer provided via `proto` and `proto_len`.
#//
#// The server will not serve any requests until TF_ServerStart is invoked.
#// The server will stop serving requests once TF_ServerStop or
#// TF_DeleteServer is invoked.
#TF_CAPI_EXPORT extern TF_Server* TF_NewServer(const void* proto,
sub TF_NewServer(Pointer                       $proto # const void*
                ,size_t                        $proto_len # Typedef<size_t>->«long unsigned int»
                ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                 ) is native(LIB) returns TF_Server is export { * }

#-From ./include/tensorflow/c/c_api.h:1531
#// Starts an in-process TensorFlow server.
#TF_CAPI_EXPORT extern void TF_ServerStart(TF_Server* server, TF_Status* status);
sub TF_ServerStart(TF_Server                     $server # Typedef<TF_Server>->«TF_Server»*
                  ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                   ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1534
#// Stops an in-process TensorFlow server.
#TF_CAPI_EXPORT extern void TF_ServerStop(TF_Server* server, TF_Status* status);
sub TF_ServerStop(TF_Server                     $server # Typedef<TF_Server>->«TF_Server»*
                 ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1538
#// Blocks until the server has been successfully stopped (via TF_ServerStop or
#// TF_ServerClose).
#TF_CAPI_EXPORT extern void TF_ServerJoin(TF_Server* server, TF_Status* status);
sub TF_ServerJoin(TF_Server                     $server # Typedef<TF_Server>->«TF_Server»*
                 ,TF_Status                     $status # Typedef<TF_Status>->«TF_Status»*
                  ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1544
#// Returns the target string that can be provided to TF_SetTarget() to connect
#// a TF_Session to `server`.
#//
#// The returned string is valid only until TF_DeleteServer is invoked.
#TF_CAPI_EXPORT extern const char* TF_ServerTarget(TF_Server* server);
sub TF_ServerTarget(TF_Server $server # Typedef<TF_Server>->«TF_Server»*
                    ) is native(LIB) returns Str is export { * }

#-From ./include/tensorflow/c/c_api.h:1548
#// Destroy an in-process TensorFlow server, frees memory. If server is running
#// it will be stopped and joined.
#TF_CAPI_EXPORT extern void TF_DeleteServer(TF_Server* server);
sub TF_DeleteServer(TF_Server $server # Typedef<TF_Server>->«TF_Server»*
                    ) is native(LIB)  is export { * }

#-From ./include/tensorflow/c/c_api.h:1555
#// Register a listener method that processes printed messages.
#//
#// If any listeners are registered, the print operator will call all listeners
#// with the printed messages and immediately return without writing to the
#// logs.
#TF_CAPI_EXPORT extern void TF_RegisterLogListener(
sub TF_RegisterLogListener(&listener () # F:void ( )*
                           ) is native(LIB)  is export { * }

## Externs

