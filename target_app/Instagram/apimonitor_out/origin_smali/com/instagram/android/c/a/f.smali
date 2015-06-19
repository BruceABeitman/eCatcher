.class public final Lcom/instagram/android/c/a/f;
.super Lcom/instagram/api/k/a/c;
.source "MegaphoneActionRequest.java"


# instance fields
.field private b:Lcom/instagram/feed/f/d;

.field private c:Lcom/instagram/android/c/a/g;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/c/a/f;->b:Lcom/instagram/feed/f/d;

    iput-object p2, p0, Lcom/instagram/android/c/a/f;->c:Lcom/instagram/android/c/a/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/android/c/a/f;
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/c/a/f;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .registers 4

    const-string v0, "type"

    iget-object v1, p0, Lcom/instagram/android/c/a/f;->b:Lcom/instagram/feed/f/d;

    invoke-virtual {v1}, Lcom/instagram/feed/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    iget-object v1, p0, Lcom/instagram/android/c/a/f;->c:Lcom/instagram/android/c/a/g;

    invoke-virtual {v1}, Lcom/instagram/android/c/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "megaphone/log/"

    return-object v0
.end method
