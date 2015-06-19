.class  Lco/vine/android/util/ContactsHelper$ContactCursorLoader;
.super Landroid/support/v4/content/CursorLoader;
.source "ContactsHelper.java"
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct/range {p0 .. p6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public loadInBackground()Landroid/database/Cursor;
.registers 3
:try_start_0
invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
:try_end_3
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v1
:goto_4
return-object v1
:catch_5
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_4
.end method
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lco/vine/android/util/ContactsHelper$ContactCursorLoader;->loadInBackground()Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method