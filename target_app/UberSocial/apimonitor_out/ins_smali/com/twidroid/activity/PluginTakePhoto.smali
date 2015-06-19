.class public Lcom/twidroid/activity/PluginTakePhoto;
.super Landroid/app/Activity;
.source "SourceFile"
.field public static final d:I = 0x7
.field  a:Landroid/content/Context;
.field public b:Lcom/twidroid/d/v;
.field public final c:Ljava/lang/String;
.field private final e:I
.field private f:Landroid/net/Uri;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const-string v0, "PluginTakePhoto"
iput-object v0, p0, Lcom/twidroid/activity/PluginTakePhoto;->c:Ljava/lang/String;
const/16 v0, 0xc7
iput v0, p0, Lcom/twidroid/activity/PluginTakePhoto;->e:I
return-void
.end method
.method public static a(I)F
.registers 2
const/4 v0, 0x6
if-ne p0, v0, :cond_6
const/high16 v0, 0x42b4
:goto_5
return v0
:cond_6
const/4 v0, 0x3
if-ne p0, v0, :cond_c
const/high16 v0, 0x4334
goto :goto_5
:cond_c
const/16 v0, 0x8
if-ne p0, v0, :cond_13
const/high16 v0, 0x4387
goto :goto_5
:cond_13
const/4 v0, 0x0
goto :goto_5
.end method
.method private a(Landroid/net/Uri;)Ljava/lang/String;
.registers 8
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "_data"
aput-object v1, v2, v0
move-object v0, p0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/activity/PluginTakePhoto;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
const-string v1, "_data"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/net/Uri;I)V
.registers 9
const/4 v3, 0x0
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "_data"
aput-object v1, v2, v0
move-object v0, p0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/activity/PluginTakePhoto;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
const-string v1, "_data"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
invoke-static {p2}, Lcom/twidroid/activity/PluginTakePhoto;->a(I)F
move-result v0
float-to-int v0, v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string v2, "orientation"
invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:try_start_2c
invoke-virtual {p0}, Lcom/twidroid/activity/PluginTakePhoto;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:goto_35
:try_end_35
.catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_36
return-void
:catch_36
move-exception v0
goto :goto_35
.end method
.method private b()V
.registers 5
const-string v0, "PluginTakePhoto"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Cancelled camera - removing "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/PluginTakePhoto;->f:Landroid/net/Uri;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_start_1a
invoke-virtual {p0}, Lcom/twidroid/activity/PluginTakePhoto;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/PluginTakePhoto;->f:Landroid/net/Uri;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:goto_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_2a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/PluginTakePhoto;->setResult(I)V
return-void
:catch_2a
move-exception v0
goto :goto_25
.end method
.method protected a()V
.registers 9
new-instance v1, Ljava/io/File;
const-string v0, "/sdcard/DCIM/Camera"
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_3d
invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_3e
const-string v0, "PluginTakePhoto"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "  has no children  exist: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_3d
return-void
:cond_3e
const/4 v0, 0x0
:goto_3f
array-length v3, v2
if-ge v0, v3, :cond_3d
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
aget-object v5, v2, v0
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-nez v4, :cond_71
:try_start_6e
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:try_end_71
.catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_74
:cond_71
:goto_71
add-int/lit8 v0, v0, 0x1
goto :goto_3f
:catch_74
move-exception v3
goto :goto_71
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 8
const/4 v3, -0x1
if-ne p2, v3, :cond_33
:try_start_3
new-instance v0, Landroid/media/ExifInterface;
iget-object v1, p0, Lcom/twidroid/activity/PluginTakePhoto;->f:Landroid/net/Uri;
invoke-direct {p0, v1}, Lcom/twidroid/activity/PluginTakePhoto;->a(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/activity/PluginTakePhoto;->f:Landroid/net/Uri;
const-string v2, "Orientation"
invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-direct {p0, v1, v0}, Lcom/twidroid/activity/PluginTakePhoto;->a(Landroid/net/Uri;I)V
:goto_1d
:try_end_1d
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_2e
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v1, p0, Lcom/twidroid/activity/PluginTakePhoto;->f:Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {p0, v3, v0}, Lcom/twidroid/activity/PluginTakePhoto;->setResult(ILandroid/content/Intent;)V
:goto_2a
invoke-virtual {p0}, Lcom/twidroid/activity/PluginTakePhoto;->finish()V
return-void
:catch_2e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1d
:cond_33
invoke-direct {p0}, Lcom/twidroid/activity/PluginTakePhoto;->b()V
goto :goto_2a
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/twidroid/activity/PluginTakePhoto; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v6, 0xc7
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/activity/PluginTakePhoto;->getBaseContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/PluginTakePhoto;->a:Landroid/content/Context;
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p0}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/activity/PluginTakePhoto;->b:Lcom/twidroid/d/v;
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string v0, "title"
const-string v2, "Image"
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "mime_type"
const-string v2, "image/jpeg"
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/PluginTakePhoto;->b:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->ax()Z
move-result v0
if-eqz v0, :cond_6b
:try_start_2d
invoke-virtual {p0}, Lcom/twidroid/activity/PluginTakePhoto;->getBaseContext()Landroid/content/Context;
move-result-object v0
const-string v2, "location"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
new-instance v2, Landroid/location/Criteria;
invoke-direct {v2}, Landroid/location/Criteria;-><init>()V
const/4 v3, 0x1
invoke-static {v0, v2, v3}, Ldroidbox/android/location/LocationManager;->getBestProvider(Landroid/location/LocationManager;Landroid/location/Criteria;Z)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
const-string v2, "latitude"
new-instance v3, Ljava/lang/Double;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v4
invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V
invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "longitude"
new-instance v3, Ljava/lang/Double;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v4
invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V
invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:goto_6b
:cond_6b
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6b} :catch_91
const-string v0, "description"
const-string v2, "Image capture by Twidroid"
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:try_start_72
invoke-virtual {p0}, Lcom/twidroid/activity/PluginTakePhoto;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/PluginTakePhoto;->f:Landroid/net/Uri;
:try_end_7e
.catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7e} :catch_af
new-instance v0, Landroid/content/Intent;
const-string v1, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "output"
iget-object v2, p0, Lcom/twidroid/activity/PluginTakePhoto;->f:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const/4 v1, 0x7
:try_start_8d
invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/PluginTakePhoto;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_90
.catch Landroid/content/ActivityNotFoundException; {:try_start_8d .. :try_end_90} :catch_c1
:goto_90
const-string v1, " - Lcom/twidroid/activity/PluginTakePhoto; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_91
move-exception v0
const-string v2, "PluginTakePhoto"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Can not determine location: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6b
:catch_af
move-exception v0
:try_start_b0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/16 v0, 0xc7
invoke-static {p0, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:try_end_b8
.catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b8} :catch_b9
goto :goto_90
:catch_b9
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
invoke-static {p0, v6}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_90
:catch_c1
move-exception v0
const-string v1, "PluginTakePhoto"
const-string v2, "Maybe device has no camera"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-direct {p0}, Lcom/twidroid/activity/PluginTakePhoto;->b()V
goto :goto_90
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
packed-switch p1, :pswitch_data_38
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c003c
invoke-virtual {p0, v1}, Lcom/twidroid/activity/PluginTakePhoto;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0109
invoke-virtual {p0, v1}, Lcom/twidroid/activity/PluginTakePhoto;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002c
new-instance v2, Lcom/twidroid/activity/PluginTakePhoto$1;
invoke-direct {v2, p0}, Lcom/twidroid/activity/PluginTakePhoto$1;-><init>(Lcom/twidroid/activity/PluginTakePhoto;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto :goto_4
:pswitch_data_38
.packed-switch 0xc7
:pswitch_5
.end packed-switch
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/PluginTakePhoto; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/PluginTakePhoto; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/PluginTakePhoto; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V
const-string v1, " - Lcom/twidroid/activity/PluginTakePhoto; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method