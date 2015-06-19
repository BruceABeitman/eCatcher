.class public final Lcom/instagram/f/a/a/d;
.super Lcom/instagram/api/k/a/b;
.source "ClearInboxNewCountRequest.java"
.implements Lcom/instagram/api/k/a/d;
.field private final b:J
.method public constructor <init>(J)V
.registers 3
invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V
iput-wide p1, p0, Lcom/instagram/f/a/a/d;->b:J
return-void
.end method
.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/a/e;
.registers 2
invoke-static {p0}, Lcom/instagram/f/a/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/a/e;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/e;
.registers 3
invoke-static {p1}, Lcom/instagram/f/a/a/d;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/a/e;
move-result-object v0
return-object v0
.end method
.method protected final a(Lcom/instagram/api/b/a;)V
.registers 5
const-string v0, "counted_up_to"
iget-wide v1, p0, Lcom/instagram/f/a/a/d;->b:J
invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "direct_share/clear_new_count/"
return-object v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method