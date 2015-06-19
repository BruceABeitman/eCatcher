.class public final Lcom/facebook/i/o;
.super Ljava/lang/Object;
.source "RegexCache.java"
.field private a:Lcom/facebook/i/p;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/facebook/i/p;
const/16 v1, 0x64
invoke-direct {v0, v1}, Lcom/facebook/i/p;-><init>(I)V
iput-object v0, p0, Lcom/facebook/i/o;->a:Lcom/facebook/i/p;
return-void
.end method
.method public final a(Ljava/lang/String;)Ljava/util/regex/Pattern;
.registers 4
iget-object v0, p0, Lcom/facebook/i/o;->a:Lcom/facebook/i/p;
invoke-virtual {v0, p1}, Lcom/facebook/i/p;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/regex/Pattern;
if-nez v0, :cond_13
invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
iget-object v1, p0, Lcom/facebook/i/o;->a:Lcom/facebook/i/p;
invoke-virtual {v1, p1, v0}, Lcom/facebook/i/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_13
return-object v0
.end method