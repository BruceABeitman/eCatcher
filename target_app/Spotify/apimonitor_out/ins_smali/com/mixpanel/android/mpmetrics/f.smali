.class final Lcom/mixpanel/android/mpmetrics/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:I
.method static constructor <clinit>()V
.registers 2
const/16 v1, 0x1c
const/16 v0, 0xba
invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
sput v0, Lcom/mixpanel/android/mpmetrics/f;->a:I
return-void
.end method
.method static synthetic a()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/f;->a:I
return v0
.end method
.method public static a(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/h;)V
.registers 3
new-instance v0, Lcom/mixpanel/android/mpmetrics/f$1;
invoke-direct {v0, p0, p1}, Lcom/mixpanel/android/mpmetrics/f$1;-><init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/h;)V
invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method