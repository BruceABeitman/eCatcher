.class public abstract Lcom/bbm/util/d/d;
.super Lcom/bbm/j/u;
.source "GroupContactToUserConvertorMonitor.java"
.field private final a:Lcom/bbm/g/o;
.field private final b:Lcom/bbm/d/a;
.method public constructor <init>(Lcom/bbm/g/o;Lcom/bbm/d/a;)V
.registers 3
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
iput-object p1, p0, Lcom/bbm/util/d/d;->a:Lcom/bbm/g/o;
iput-object p2, p0, Lcom/bbm/util/d/d;->b:Lcom/bbm/d/a;
return-void
.end method
.method public abstract a(Lcom/google/b/a/l;)V
.end method
.method protected final b()Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/util/d/d;->b:Lcom/bbm/d/a;
iget-object v3, p0, Lcom/bbm/util/d/d;->a:Lcom/bbm/g/o;
iget-object v3, v3, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v2
sget-object v3, Lcom/bbm/util/d/e;->a:[I
iget-object v4, v2, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;
invoke-virtual {v4}, Lcom/bbm/util/bh;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_3a
:cond_19
:pswitch_19
:goto_19
return v0
:pswitch_1a
iget-object v2, v2, Lcom/bbm/d/fv;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/util/d/d;->b:Lcom/bbm/d/a;
invoke-virtual {v3, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
iget-object v3, v2, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v3, v4, :cond_19
invoke-static {v2}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/util/d/d;->a(Lcom/google/b/a/l;)V
move v0, v1
goto :goto_19
:pswitch_31
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/util/d/d;->a(Lcom/google/b/a/l;)V
move v0, v1
goto :goto_19
:pswitch_data_3a
.packed-switch 0x1
:pswitch_19
:pswitch_1a
:pswitch_31
.end packed-switch
.end method