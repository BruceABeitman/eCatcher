.class final Lcom/mixpanel/android/surveys/c$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
.field final synthetic b:Lcom/mixpanel/android/surveys/c;
.method constructor <init>(Lcom/mixpanel/android/surveys/c;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V
.registers 3
iput-object p1, p0, Lcom/mixpanel/android/surveys/c$2;->b:Lcom/mixpanel/android/surveys/c;
iput-object p2, p0, Lcom/mixpanel/android/surveys/c$2;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/mixpanel/android/surveys/c$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c$2;->b:Lcom/mixpanel/android/surveys/c;
iget-object v0, v0, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-static {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/b;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/mixpanel/android/surveys/c$2;->b:Lcom/mixpanel/android/surveys/c;
iget-object v1, v1, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
new-instance v2, Lcom/mixpanel/android/surveys/c$2$1;
invoke-direct {v2, p0, v0}, Lcom/mixpanel/android/surveys/c$2$1;-><init>(Lcom/mixpanel/android/surveys/c$2;Ljava/lang/String;)V
const-wide/16 v3, 0xa5
invoke-virtual {v1, v2, v3, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_20
const-string v1, " - Lcom/mixpanel/android/surveys/c$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method