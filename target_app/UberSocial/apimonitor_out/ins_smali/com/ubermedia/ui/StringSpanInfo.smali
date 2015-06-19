.class public Lcom/ubermedia/ui/StringSpanInfo;
.super Landroid/text/style/URLSpan;
.source "SourceFile"
.field public final a:Ljava/lang/CharSequence;
.field public final b:Ljava/lang/String;
.field private c:Lcom/ubermedia/ui/d;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
.registers 3
invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;
iput-object p1, p0, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V
iput-object p2, p0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;
iput-object p3, p0, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;
return-void
.end method
.method public a(Lcom/ubermedia/ui/d;)V
.registers 2
iput-object p1, p0, Lcom/ubermedia/ui/StringSpanInfo;->c:Lcom/ubermedia/ui/d;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/ubermedia/ui/StringSpanInfo; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ubermedia/ui/StringSpanInfo;->c:Lcom/ubermedia/ui/d;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/ubermedia/ui/StringSpanInfo;->c:Lcom/ubermedia/ui/d;
invoke-virtual {p0}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, p1, v1}, Lcom/ubermedia/ui/d;->a(Landroid/view/View;Ljava/lang/String;)V
:goto_d
const-string v1, " - Lcom/ubermedia/ui/StringSpanInfo; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V
goto :goto_d
.end method
.method public updateDrawState(Landroid/text/TextPaint;)V
.registers 3
iget v0, p1, Landroid/text/TextPaint;->linkColor:I
invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V
return-void
.end method