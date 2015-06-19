.class Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;
.super Ljava/lang/Object;
.source "UrlResourceCache.java"

# interfaces
.implements Lco/vine/android/network/HttpOperationReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/UrlResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceHttpOperationReader"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final mOwnerId:J

.field private final mPersist:Z

.field private mResource:Lco/vine/android/util/UrlResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lco/vine/android/util/UrlResourceCache;


# direct methods
.method public constructor <init>(Lco/vine/android/util/UrlResourceCache;JLjava/lang/Object;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTK;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->this$0:Lco/vine/android/util/UrlResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mResource:Lco/vine/android/util/UrlResource;

    iput-wide p2, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mOwnerId:J

    iput-object p4, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mKey:Ljava/lang/Object;

    iput-object p5, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mUrl:Ljava/lang/String;

    iput-boolean p6, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mPersist:Z

    return-void
.end method


# virtual methods
.method public final getResultResource()Lco/vine/android/util/UrlResource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mResource:Lco/vine/android/util/UrlResource;

    return-object v0
.end method

.method public onHandleError(Lco/vine/android/network/HttpResult;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lco/vine/android/util/UrlResourceCache;->onResourceError(Ljava/lang/Object;Lco/vine/android/network/HttpResult;)V

    return-void
.end method

.method public final readInput(IILjava/io/InputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mPersist:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-wide v1, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mOwnerId:J

    iget-object v3, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mKey:Ljava/lang/Object;

    iget-object v4, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mUrl:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/util/UrlResourceCache;->saveResource(JLjava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;Z)Lco/vine/android/util/UrlResource;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mResource:Lco/vine/android/util/UrlResource;

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v1, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mKey:Ljava/lang/Object;

    iget-object v2, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p3}, Lco/vine/android/util/UrlResourceCache;->obtainResource(Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;)Lco/vine/android/util/UrlResource;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->mResource:Lco/vine/android/util/UrlResource;

    goto :goto_14
.end method
