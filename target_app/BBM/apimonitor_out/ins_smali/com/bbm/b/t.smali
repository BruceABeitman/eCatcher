.class final Lcom/bbm/b/t;
.super Landroid/telephony/PhoneStateListener;
.source "AdsModel.java"
.field final synthetic a:Lcom/bbm/b/q;
.field final synthetic b:Lcom/bbm/b/s;
.method constructor <init>(Lcom/bbm/b/s;Lcom/bbm/b/q;)V
.registers 3
iput-object p1, p0, Lcom/bbm/b/t;->b:Lcom/bbm/b/s;
iput-object p2, p0, Lcom/bbm/b/t;->a:Lcom/bbm/b/q;
invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V
return-void
.end method
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
.registers 3
iget-object v0, p0, Lcom/bbm/b/t;->b:Lcom/bbm/b/s;
invoke-virtual {v0}, Lcom/bbm/b/s;->a()V
return-void
.end method