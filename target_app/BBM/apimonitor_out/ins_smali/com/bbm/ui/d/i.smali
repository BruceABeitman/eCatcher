.class public abstract Lcom/bbm/ui/d/i;
.super Ljava/lang/Object;
.source "RequestFlaggedObjectListener.java"
.implements Lcom/bbm/ui/d/c;
.field private a:Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract a()V
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 4
iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
const-string v1, "listElements"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/bbm/ui/d/i;->a()V
:goto_d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;
iget-object v1, p0, Lcom/bbm/ui/d/i;->a:Ljava/lang/Object;
invoke-virtual {v0, v1, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V
return-void
:cond_19
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "error"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/d/i;->a(Ljava/lang/String;)V
goto :goto_d
.end method
.method public abstract a(Ljava/lang/String;)V
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
iput-object p2, p0, Lcom/bbm/ui/d/i;->a:Ljava/lang/Object;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;
invoke-virtual {v0, p1, p0, p2}, Lcom/bbm/ui/d/d;->a(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V
return-void
.end method