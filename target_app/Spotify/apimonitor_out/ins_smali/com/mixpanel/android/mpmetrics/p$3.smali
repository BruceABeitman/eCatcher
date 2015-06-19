.class final Lcom/mixpanel/android/mpmetrics/p$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/mixpanel/android/mpmetrics/h;
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/Survey;
.field final synthetic b:Landroid/app/Activity;
.field final synthetic c:Lcom/mixpanel/android/mpmetrics/p;
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/p;Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V
.registers 4
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/p$3;->c:Lcom/mixpanel/android/mpmetrics/p;
iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/p$3;->a:Lcom/mixpanel/android/mpmetrics/Survey;
iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/p$3;->b:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;I)V
.registers 9
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/p$3;->a:Lcom/mixpanel/android/mpmetrics/Survey;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/p$3;->b:Landroid/app/Activity;
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/p$3;->c:Lcom/mixpanel/android/mpmetrics/p;
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/p;->b()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/p$3;->c:Lcom/mixpanel/android/mpmetrics/p;
iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/p;->a:Lcom/mixpanel/android/mpmetrics/l;
invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/l;->c(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/String;
move-result-object v3
move-object v4, p1
move v5, p2
invoke-static/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
return-void
.end method