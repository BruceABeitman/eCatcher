.class public final Lcom/instagram/android/login/c/j;
.super Lcom/instagram/api/k/a/c;
.source "QuickSandRequest.java"
.implements Lcom/instagram/api/k/a/d;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
iput-object p2, p0, Lcom/instagram/android/login/c/j;->c:Ljava/lang/String;
iput-object p1, p0, Lcom/instagram/android/login/c/j;->b:Ljava/lang/String;
return-void
.end method
.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/e;
.registers 2
invoke-static {p0}, Lcom/instagram/android/h/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/e;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
.registers 3
invoke-static {p1}, Lcom/instagram/android/login/c/j;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/e;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "challenge_type"
iget-object v1, p0, Lcom/instagram/android/login/c/j;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "guid"
iget-object v1, p0, Lcom/instagram/android/login/c/j;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "si/fetch_headers/"
return-object v0
.end method