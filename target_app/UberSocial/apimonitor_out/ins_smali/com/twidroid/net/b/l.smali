.class public Lcom/twidroid/net/b/l;
.super Lcom/twidroid/net/b/a/f;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/net/b/i;
.method protected constructor <init>(Lcom/twidroid/net/b/i;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/b/l;->a:Lcom/twidroid/net/b/i;
invoke-direct {p0}, Lcom/twidroid/net/b/a/f;-><init>()V
return-void
.end method
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
.registers 3
const/4 v0, 0x0
aget-object v0, p1, v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
packed-switch v0, :pswitch_data_26
:goto_c
const/4 v0, 0x0
return-object v0
:pswitch_e
iget-object v0, p0, Lcom/twidroid/net/b/l;->a:Lcom/twidroid/net/b/i;
invoke-virtual {v0}, Lcom/twidroid/net/b/i;->b()V
goto :goto_c
:pswitch_14
iget-object v0, p0, Lcom/twidroid/net/b/l;->a:Lcom/twidroid/net/b/i;
invoke-virtual {v0}, Lcom/twidroid/net/b/i;->a()V
goto :goto_c
:pswitch_1a
iget-object v0, p0, Lcom/twidroid/net/b/l;->a:Lcom/twidroid/net/b/i;
invoke-virtual {v0}, Lcom/twidroid/net/b/i;->c()V
goto :goto_c
:pswitch_20
iget-object v0, p0, Lcom/twidroid/net/b/l;->a:Lcom/twidroid/net/b/i;
invoke-virtual {v0}, Lcom/twidroid/net/b/i;->d()V
goto :goto_c
:pswitch_data_26
.packed-switch 0x0
:pswitch_e
:pswitch_14
:pswitch_1a
:pswitch_20
.end packed-switch
.end method
.method protected synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/net/b/l;->a([Ljava/lang/Object;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method