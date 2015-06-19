.class public Lorg/apache/b/a/c/i;
.super Lorg/apache/b/a/c/j;
.source "SourceFile"
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lorg/apache/b/a/c/j;-><init>()V
const-string v0, "Content-Transfer-Encoding"
new-instance v1, Lorg/apache/b/a/c/d;
invoke-direct {v1}, Lorg/apache/b/a/c/d;-><init>()V
invoke-virtual {p0, v0, v1}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v0, "Content-Type"
new-instance v1, Lorg/apache/b/a/c/f;
invoke-direct {v1}, Lorg/apache/b/a/c/f;-><init>()V
invoke-virtual {p0, v0, v1}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
new-instance v0, Lorg/apache/b/a/c/h;
invoke-direct {v0}, Lorg/apache/b/a/c/h;-><init>()V
const-string v1, "Date"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Resent-Date"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
new-instance v0, Lorg/apache/b/a/c/p;
invoke-direct {v0}, Lorg/apache/b/a/c/p;-><init>()V
const-string v1, "From"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Resent-From"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
new-instance v0, Lorg/apache/b/a/c/n;
invoke-direct {v0}, Lorg/apache/b/a/c/n;-><init>()V
const-string v1, "Sender"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Resent-Sender"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
new-instance v0, Lorg/apache/b/a/c/b;
invoke-direct {v0}, Lorg/apache/b/a/c/b;-><init>()V
const-string v1, "To"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Resent-To"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Cc"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Resent-Cc"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Bcc"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Resent-Bcc"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
const-string v1, "Reply-To"
invoke-virtual {p0, v1, v0}, Lorg/apache/b/a/c/i;->a(Ljava/lang/String;Lorg/apache/b/a/c/l;)V
return-void
.end method