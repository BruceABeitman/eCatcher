.class  Lcom/lenovo/tonesdk/ToneReceiver$1;
.super Ljava/lang/Object;
.source "ToneReceiver.java"
.implements Lcom/lenovo/anyshare/sdk/internal/dg;
.field final synthetic a:Lcom/lenovo/tonesdk/ToneReceiverListener;
.field final synthetic b:Lcom/lenovo/tonesdk/ToneReceiver;
.method constructor <init>(Lcom/lenovo/tonesdk/ToneReceiver;Lcom/lenovo/tonesdk/ToneReceiverListener;)V
.registers 3
iput-object p1, p0, Lcom/lenovo/tonesdk/ToneReceiver$1;->b:Lcom/lenovo/tonesdk/ToneReceiver;
iput-object p2, p0, Lcom/lenovo/tonesdk/ToneReceiver$1;->a:Lcom/lenovo/tonesdk/ToneReceiverListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onResult(ILjava/lang/String;)V
.registers 4
and-int/lit8 v0, p1, 0xe
if-eqz v0, :cond_b
if-eqz p2, :cond_b
iget-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver$1;->a:Lcom/lenovo/tonesdk/ToneReceiverListener;
invoke-interface {v0, p2}, Lcom/lenovo/tonesdk/ToneReceiverListener;->onResult(Ljava/lang/String;)V
:cond_b
return-void
.end method