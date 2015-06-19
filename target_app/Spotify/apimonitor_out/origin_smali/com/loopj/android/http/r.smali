.class public final Lcom/loopj/android/http/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loopj/android/http/r;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/loopj/android/http/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loopj/android/http/r;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/loopj/android/http/r;->d:Z

    return-void
.end method
