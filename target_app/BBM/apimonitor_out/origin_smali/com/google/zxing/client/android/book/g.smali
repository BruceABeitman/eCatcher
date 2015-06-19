.class final Lcom/google/zxing/client/android/book/g;
.super Ljava/lang/Object;
.source "SearchBookContentsResult.java"


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/book/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/android/book/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/android/book/g;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/zxing/client/android/book/g;->e:Z

    return-void
.end method
