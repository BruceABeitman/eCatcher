.class public Lcom/googlecode/javacv/cpp/avutil$AVClass;
.super Lcom/googlecode/javacpp/Pointer;
.source "avutil.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVClass;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVClass;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public native category()I
.end method
.method public native category(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native child_class_next()Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_class_next_AVClass;
.end method
.method public native child_next()Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_next_Pointer_Pointer;
.end method
.method public native child_next(Lcom/googlecode/javacv/cpp/avutil$AVClass$Child_next_Pointer_Pointer;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native class_name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native get_category()Lcom/googlecode/javacv/cpp/avutil$AVClass$Get_category_Pointer;
.end method
.method public native get_category(Lcom/googlecode/javacv/cpp/avutil$AVClass$Get_category_Pointer;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native item_name()Lcom/googlecode/javacv/cpp/avutil$AVClass$Item_name_Pointer;
.end method
.method public native log_level_offset_offset()I
.end method
.method public native log_level_offset_offset(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native option()Lcom/googlecode/javacv/cpp/avutil$AVOption;
.end method
.method public native parent_log_context_offset()I
.end method
.method public native parent_log_context_offset(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVClass;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVClass;
return-object v0
.end method
.method public native query_ranges()Lcom/googlecode/javacv/cpp/avutil$AVClass$Query_ranges_PointerPointer_Pointer_BytePointer_int;
.end method
.method public native query_ranges(Lcom/googlecode/javacv/cpp/avutil$AVClass$Query_ranges_PointerPointer_Pointer_BytePointer_int;)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method
.method public native version()I
.end method
.method public native version(I)Lcom/googlecode/javacv/cpp/avutil$AVClass;
.end method