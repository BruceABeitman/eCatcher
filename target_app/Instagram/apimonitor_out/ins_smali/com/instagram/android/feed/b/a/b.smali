.class public final Lcom/instagram/android/feed/b/a/b;
.super Lcom/instagram/api/j/g;
.source "ResolveShortUrlRequest.java"
.field private final a:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/api/j/a;)V
.registers 6
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p3, p0, Lcom/instagram/android/feed/b/a/b;->a:Ljava/lang/String;
return-void
.end method
.method private static b(Lcom/instagram/api/j/q;)Lcom/instagram/android/feed/b/a/c;
.registers 2
invoke-virtual {p0}, Lcom/instagram/api/j/q;->h()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/b/a/c;
if-nez v0, :cond_10
new-instance v0, Lcom/instagram/android/feed/b/a/c;
invoke-direct {v0}, Lcom/instagram/android/feed/b/a/c;-><init>()V
invoke-virtual {p0, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V
:cond_10
return-object v0
.end method
.method public final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "url"
iget-object v1, p0, Lcom/instagram/android/feed/b/a/b;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 6
const-string v0, "media_id"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/android/feed/b/a/b;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/feed/b/a/c;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/b/a/c;->a(Ljava/lang/String;)V
const-string v0, "ok"
invoke-virtual {p3, v0}, Lcom/instagram/api/j/q;->e(Ljava/lang/String;)V
:goto_1b
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const-string v0, "author_id"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/android/feed/b/a/b;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/feed/b/a/c;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/b/a/c;->b(Ljava/lang/String;)V
goto :goto_1b
:cond_34
const-string v0, "can_view"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4b
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/android/feed/b/a/b;->b(Lcom/instagram/api/j/q;)Lcom/instagram/android/feed/b/a/c;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/b/a/c;->a(Z)V
goto :goto_1b
:cond_4b
const/4 v0, 0x0
goto :goto_1c
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
const-string v0, "oembed/"
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method