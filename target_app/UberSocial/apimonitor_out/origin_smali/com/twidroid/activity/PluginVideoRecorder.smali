.class public Lcom/twidroid/activity/PluginVideoRecorder;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/twidroid/activity/PluginVideoRecorder;->c:I

    const/16 v0, 0xc7

    iput v0, p0, Lcom/twidroid/activity/PluginVideoRecorder;->d:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/twidroid/activity/PluginVideoRecorder;->e:I

    const-string v0, "PluginVideoRecorder"

    iput-object v0, p0, Lcom/twidroid/activity/PluginVideoRecorder;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_61

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v6}, Lcom/twidroid/activity/PluginVideoRecorder;->setResult(ILandroid/content/Intent;)V

    :goto_1a
    invoke-virtual {p0}, Lcom/twidroid/activity/PluginVideoRecorder;->finish()V

    const-string v0, "PluginVideoRecorder"

    const-string v1, "onActivity Result called"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v5, "_id DESC"

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/activity/PluginVideoRecorder;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v6}, Lcom/twidroid/activity/PluginVideoRecorder;->setResult(ILandroid/content/Intent;)V
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_5c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1a

    :catchall_5c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_61
    const-string v0, "PluginVideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelled video recorder - removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/PluginVideoRecorder;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7b
    invoke-virtual {p0}, Lcom/twidroid/activity/PluginVideoRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/PluginVideoRecorder;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_86} :catch_8a

    :goto_86
    invoke-virtual {p0, v4}, Lcom/twidroid/activity/PluginVideoRecorder;->setResult(I)V

    goto :goto_1a

    :catch_8a
    move-exception v0

    goto :goto_86
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/activity/PluginVideoRecorder;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/PluginVideoRecorder;->a:Landroid/content/Context;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mime_type"

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    const-string v2, "Image capture by Twidroid"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/PluginVideoRecorder;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xc7

    invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_30
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const v3, 0x7f0c0109

    const v2, 0x7f0c002c

    const v1, 0x7f020067

    packed-switch p1, :pswitch_data_62

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/PluginVideoRecorder;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/twidroid/activity/PluginVideoRecorder;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/twidroid/activity/PluginVideoRecorder$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/PluginVideoRecorder$1;-><init>(Lcom/twidroid/activity/PluginVideoRecorder;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    :pswitch_38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003e

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/PluginVideoRecorder;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/twidroid/activity/PluginVideoRecorder;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/twidroid/activity/PluginVideoRecorder$2;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/PluginVideoRecorder$2;-><init>(Lcom/twidroid/activity/PluginVideoRecorder;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    :pswitch_data_62
    .packed-switch 0xc7
        :pswitch_e
        :pswitch_38
    .end packed-switch
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V

    return-void
.end method
