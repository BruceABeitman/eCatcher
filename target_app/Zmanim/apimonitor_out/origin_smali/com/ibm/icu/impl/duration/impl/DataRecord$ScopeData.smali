.class public Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScopeData"
.end annotation


# instance fields
.field prefix:Ljava/lang/String;

.field requiresDigitPrefix:Z

.field suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/ibm/icu/impl/duration/impl/RecordReader;)Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;
    .registers 3

    const-string v1, "ScopeData"

    invoke-interface {p0, v1}, Lcom/ibm/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;

    invoke-direct {v0}, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;-><init>()V

    const-string v1, "prefix"

    invoke-interface {p0, v1}, Lcom/ibm/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    const-string v1, "requiresDigitPrefix"

    invoke-interface {p0, v1}, Lcom/ibm/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    const-string v1, "suffix"

    invoke-interface {p0, v1}, Lcom/ibm/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    invoke-interface {p0}, Lcom/ibm/icu/impl/duration/impl/RecordReader;->close()Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object v1, v0

    :goto_2c
    return-object v1

    :cond_2d
    const/4 v1, 0x0

    goto :goto_2c
.end method


# virtual methods
.method public write(Lcom/ibm/icu/impl/duration/impl/RecordWriter;)V
    .registers 4

    const-string v0, "ScopeData"

    invoke-interface {p1, v0}, Lcom/ibm/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    const-string v0, "prefix"

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requiresDigitPrefix"

    iget-boolean v1, p0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    const-string v0, "suffix"

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/ibm/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/ibm/icu/impl/duration/impl/RecordWriter;->close()Z

    return-void
.end method
