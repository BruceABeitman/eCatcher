.class public final Lcom/bbm/util/a/g;
.super Ljava/lang/Object;
.source "GlympseTracker.java"
.field public final a:Lcom/bbm/d/a;
.field public final b:Ljava/lang/String;
.field public final c:Lcom/bbm/util/cr;
.field public final d:Lcom/bbm/f/ac;
.field public e:Ljava/lang/String;
.field final f:Ljava/lang/String;
.field final g:Lcom/bbm/util/cs;
.field final h:Ljava/util/Map;
.field public final i:Lcom/bbm/j/k;
.method public constructor <init>(Lcom/bbm/d/a;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/util/cr;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/a/g;->c:Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/util/a/h;
invoke-direct {v0, p0}, Lcom/bbm/util/a/h;-><init>(Lcom/bbm/util/a/g;)V
iput-object v0, p0, Lcom/bbm/util/a/g;->d:Lcom/bbm/f/ac;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/util/a/g;->e:Ljava/lang/String;
new-instance v0, Lcom/bbm/util/cs;
invoke-direct {v0}, Lcom/bbm/util/cs;-><init>()V
iput-object v0, p0, Lcom/bbm/util/a/g;->g:Lcom/bbm/util/cs;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/util/a/g;->h:Ljava/util/Map;
new-instance v0, Lcom/bbm/util/a/i;
invoke-direct {v0, p0}, Lcom/bbm/util/a/i;-><init>(Lcom/bbm/util/a/g;)V
iput-object v0, p0, Lcom/bbm/util/a/g;->i:Lcom/bbm/j/k;
iput-object p2, p0, Lcom/bbm/util/a/g;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/util/a/g;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/a/g;->f:Ljava/lang/String;
iput-object p1, p0, Lcom/bbm/util/a/g;->a:Lcom/bbm/d/a;
return-void
.end method