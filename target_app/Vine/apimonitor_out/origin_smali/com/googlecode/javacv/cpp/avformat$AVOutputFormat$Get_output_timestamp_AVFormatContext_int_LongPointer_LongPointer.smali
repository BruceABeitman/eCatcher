.class public Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Get_output_timestamp_AVFormatContext_int_LongPointer_LongPointer;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Get_output_timestamp_AVFormatContext_int_LongPointer_LongPointer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat$Get_output_timestamp_AVFormatContext_int_LongPointer_LongPointer;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILcom/googlecode/javacpp/LongPointer;Lcom/googlecode/javacpp/LongPointer;)V
.end method
