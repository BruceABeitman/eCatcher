.class public final Lcom/instagram/android/c/a/k;
.super Lcom/instagram/api/j/g;
.source "PermalinkRequest.java"
.field private a:Lcom/instagram/feed/d/l;
.method public constructor <init>(Lcom/instagram/feed/d/l;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object p1, p0, Lcom/instagram/android/c/a/k;->a:Lcom/instagram/feed/d/l;
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 6
const-string v0, "permalink"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_1c
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1c
invoke-virtual {p3, v0}, Lcom/instagram/api/j/q;->a(Ljava/lang/Object;)V
:cond_1c
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method protected final b_()Ljava/lang/String;
.registers 5
const-string v0, "media/%s/permalink/"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/android/c/a/k;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v3}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->c:I
return v0
.end method