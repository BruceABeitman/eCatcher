.class final Lcom/bbm/ui/ca;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"
.implements Lcom/bbm/ui/gi;
.field final synthetic a:Lcom/bbm/ui/gi;
.field final synthetic b:Lcom/bbm/ui/EmoticonStickerPager;
.method constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;Lcom/bbm/ui/gi;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/ca;->b:Lcom/bbm/ui/EmoticonStickerPager;
iput-object p2, p0, Lcom/bbm/ui/ca;->a:Lcom/bbm/ui/gi;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/d/gf;I)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/ca;->a:Lcom/bbm/ui/gi;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/bbm/ui/ca;->a:Lcom/bbm/ui/gi;
invoke-interface {v0, p1, p2}, Lcom/bbm/ui/gi;->a(Lcom/bbm/d/gf;I)V
:cond_9
return-void
.end method