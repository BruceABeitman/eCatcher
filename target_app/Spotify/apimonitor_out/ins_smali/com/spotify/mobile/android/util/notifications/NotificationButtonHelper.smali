.class public final Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:I
.field private b:I
.field private c:I
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a:I
iput p2, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->b:I
const/4 v0, 0x0
iput v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
return-void
.end method
.method public constructor <init>(III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a:I
iput p2, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->b:I
iput p3, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
return-void
.end method
.method public final a(Landroid/widget/RemoteViews;Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;)V
.registers 7
const/4 v3, 0x0
const/16 v2, 0x8
sget-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$1;->a:[I
invoke-virtual {p2}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_50
const-string v0, "Invalid NotificationButtonHelper visibility"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:cond_13
:goto_13
return-void
:pswitch_14
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a:I
invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->b:I
invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
if-lez v0, :cond_13
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
goto :goto_13
:pswitch_28
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a:I
invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->b:I
invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
if-lez v0, :cond_13
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
goto :goto_13
:pswitch_3c
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
if-lez v0, :cond_13
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a:I
invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->b:I
invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
iget v0, p0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->c:I
invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
goto :goto_13
:pswitch_data_50
.packed-switch 0x1
:pswitch_14
:pswitch_28
:pswitch_3c
.end packed-switch
.end method
.method public final a(Landroid/widget/RemoteViews;Z)V
.registers 4
if-eqz p2, :cond_8
sget-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->a:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
:goto_4
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper;->a(Landroid/widget/RemoteViews;Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;)V
return-void
:cond_8
sget-object v0, Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;->b:Lcom/spotify/mobile/android/util/notifications/NotificationButtonHelper$Visibility;
goto :goto_4
.end method