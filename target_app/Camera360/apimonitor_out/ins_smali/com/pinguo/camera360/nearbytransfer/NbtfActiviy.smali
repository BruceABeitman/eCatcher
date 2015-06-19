.class public Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;
.super Landroid/support/v4/app/FragmentActivity;
.source "NbtfActiviy.java"
.implements Landroid/view/View$OnClickListener;
.field public static final AS_RECEIVER:I = 0x41
.field public static final CODE_REJECT:I = 0x40
.field public static final INTENT_PICK_PHOTOS:Ljava/lang/String; = "intent_pick_photos"
.field public static final RESULT_CODE:Ljava/lang/String; = "result_code"
.field private static final SELECT_PICTURE:I = 0x21
.field private static final SELECT_RECEIVER:I = 0x22
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method public static enterSendModule(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v2, "paths"
invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
const-string/jumbo v2, "paths"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static pickerPhotos(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "com.pinguo.camera360.gallery.pick_photos"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static startMeForPickPhtots(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "intent_pick_photos"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static subStringByByteCount(Ljava/lang/String;I)Ljava/lang/String;
.registers 11
const/4 v8, 0x0
if-gtz p1, :cond_c
new-instance v7, Ljava/lang/IllegalArgumentException;
const-string/jumbo v8, "maxBytes must > 0"
invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:cond_c
:try_start_c
const-string/jumbo v7, "utf-8"
invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_12
.catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_12} :catch_1d
:try_start_12
const-string/jumbo v7, "utf-8"
invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v7
array-length v7, v7
:try_end_1a
.catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_1a} :catch_28
if-gt v7, p1, :cond_2c
:goto_1c
return-object p0
:catch_1d
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
div-int/lit8 v1, p1, 0x3
invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
goto :goto_1c
:catch_28
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
:cond_2c
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
const/4 v5, 0x0
const/4 v2, 0x0
:goto_37
if-lt v2, v3, :cond_3e
:try_start_39
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_1c
:cond_3e
add-int/lit8 v7, v2, 0x1
invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "utf-8"
invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v7
array-length v7, v7
add-int/2addr v5, v7
if-lt v5, p1, :cond_54
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_1c
:cond_54
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_57
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_57} :catch_5a
add-int/lit8 v2, v2, 0x1
goto :goto_37
:catch_5a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
div-int/lit8 v1, p1, 0x3
invoke-virtual {p0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
goto :goto_1c
.end method
.method public enterReceiveModule()V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v1, 0x41
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public enterSendModule(Landroid/content/Intent;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v2, "paths"
invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
const-string/jumbo v2, "paths"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 10
const/4 v5, 0x0
const/16 v4, 0x21
if-ne p1, v4, :cond_5c
if-eqz p3, :cond_5c
const-string/jumbo v4, "paths"
invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v3
if-eqz v3, :cond_34
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_34
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1a
:cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_38
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v4
if-gtz v4, :cond_4d
const v4, 0x7f080128
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/Toast;->show()V
:goto_34
:cond_34
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V
return-void
:cond_38
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
new-instance v4, Ljava/io/File;
invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_1a
:cond_4d
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v4, "paths"
invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
invoke-virtual {p0, p3}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->enterSendModule(Landroid/content/Intent;)V
goto :goto_34
:cond_5c
const/16 v4, 0x41
if-ne p1, v4, :cond_34
if-eqz p3, :cond_34
const-string/jumbo v4, "result_code"
invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v4
packed-switch v4, :pswitch_data_7a
goto :goto_34
:pswitch_6d
const v4, 0x7f080129
const/4 v5, 0x1
invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v4
invoke-virtual {v4}, Landroid/widget/Toast;->show()V
goto :goto_34
nop
:pswitch_data_7a
.packed-switch 0x40
:pswitch_6d
.end packed-switch
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_10
:goto_7
:pswitch_7
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->enterReceiveModule()V
goto :goto_7
:pswitch_c
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->pickerPhotos()V
goto :goto_7
:pswitch_data_10
.packed-switch 0x7f0a0438
:pswitch_c
:pswitch_7
:pswitch_8
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f0300bf
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->setContentView(I)V
const v1, 0x7f0a043a
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a0438
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a0437
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f080111
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string/jumbo v2, "intent_pick_photos"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_4c
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->pickerPhotos()V
:cond_4c
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/nearbytransfer/event/FinishNbtfActivityEvent;)V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->finish()V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V
const-string/jumbo v0, "intent_pick_photos"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->pickerPhotos()V
:cond_10
return-void
.end method
.method public pickerPhotos()V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "com.pinguo.camera360.gallery.pick_photos"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/NbtfActiviy;->startActivity(Landroid/content/Intent;)V
return-void
.end method