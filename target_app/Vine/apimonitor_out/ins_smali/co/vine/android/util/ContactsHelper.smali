.class public Lco/vine/android/util/ContactsHelper;
.super Ljava/lang/Object;
.source "ContactsHelper.java"
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.field private static final GOOGLE_ACCOUNT:Ljava/lang/String; = "com.google"
.field private static final LOADER_ID_CONTACTS_DATA:I = 0x2
.field private static final LOADER_ID_CONTACTS_PROFILE:I = 0x1
.field private mFragment:Landroid/support/v4/app/Fragment;
.field private mListener:Lco/vine/android/util/ContactsHelper$ContactHelperListener;
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lco/vine/android/util/ContactsHelper$ContactHelperListener;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/util/ContactsHelper;->mFragment:Landroid/support/v4/app/Fragment;
iput-object p2, p0, Lco/vine/android/util/ContactsHelper;->mListener:Lco/vine/android/util/ContactsHelper$ContactHelperListener;
return-void
.end method
.method public static loadContacts(Landroid/support/v4/app/Fragment;Lco/vine/android/util/ContactsHelper$ContactHelperListener;)V
.registers 3
new-instance v0, Lco/vine/android/util/ContactsHelper;
invoke-direct {v0, p0, p1}, Lco/vine/android/util/ContactsHelper;-><init>(Landroid/support/v4/app/Fragment;Lco/vine/android/util/ContactsHelper$ContactHelperListener;)V
invoke-virtual {v0}, Lco/vine/android/util/ContactsHelper;->init()V
return-void
.end method
.method public init()V
.registers 6
const/4 v4, 0x0
invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z
move-result v3
if-nez v3, :cond_34
iget-object v3, p0, Lco/vine/android/util/ContactsHelper;->mFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;
move-result-object v1
const/4 v3, 0x1
invoke-virtual {v1, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
const/4 v3, 0x2
invoke-virtual {v1, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
iget-object v3, p0, Lco/vine/android/util/ContactsHelper;->mFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v2
const-string v3, "com.google"
invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
move-result-object v0
if-eqz v0, :cond_34
array-length v3, v0
if-lez v3, :cond_34
iget-object v3, p0, Lco/vine/android/util/ContactsHelper;->mListener:Lco/vine/android/util/ContactsHelper$ContactHelperListener;
const/4 v4, 0x0
aget-object v4, v0, v4
iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-interface {v3, v4}, Lco/vine/android/util/ContactsHelper$ContactHelperListener;->onEmailLoaded(Ljava/lang/String;)V
:cond_34
return-void
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 15
const/4 v3, 0x1
const/4 v11, 0x0
const/4 v4, 0x0
packed-switch p1, :pswitch_data_3e
move-object v0, v4
:goto_7
return-object v0
:pswitch_8
new-instance v0, Lco/vine/android/util/ContactsHelper$ContactCursorLoader;
iget-object v1, p0, Lco/vine/android/util/ContactsHelper;->mFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;
new-array v3, v3, [Ljava/lang/String;
const-string v5, "display_name"
aput-object v5, v3, v11
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Lco/vine/android/util/ContactsHelper$ContactCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
:pswitch_1e
new-instance v5, Lco/vine/android/util/ContactsHelper$ContactCursorLoader;
iget-object v0, p0, Lco/vine/android/util/ContactsHelper;->mFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;
const-string v1, "data"
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
sget-object v8, Lco/vine/android/util/ContactsHelper$ProfileQuery;->PROJECTION:[Ljava/lang/String;
const-string v9, "mimetype=?"
new-array v10, v3, [Ljava/lang/String;
const-string v0, "vnd.android.cursor.item/phone_v2"
aput-object v0, v10, v11
move-object v11, v4
invoke-direct/range {v5 .. v11}, Lco/vine/android/util/ContactsHelper$ContactCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v5
goto :goto_7
:pswitch_data_3e
.packed-switch 0x1
:pswitch_8
:pswitch_1e
.end packed-switch
.end method
.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.registers 9
invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I
move-result v4
packed-switch v4, :pswitch_data_5a
:goto_7
:cond_7
return-void
:pswitch_8
if-eqz p2, :cond_7
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v4
if-eqz v4, :cond_7
const-string v4, "display_name"
invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v4
invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lco/vine/android/util/ContactsHelper;->mListener:Lco/vine/android/util/ContactsHelper$ContactHelperListener;
invoke-interface {v4, v1}, Lco/vine/android/util/ContactsHelper$ContactHelperListener;->onNameLoaded(Ljava/lang/String;)V
goto :goto_7
:pswitch_20
const/4 v2, 0x0
if-eqz p2, :cond_3b
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v4
if-eqz v4, :cond_3b
const/4 v4, 0x2
invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
const-string v4, "vnd.android.cursor.item/phone_v2"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3b
const/4 v4, 0x1
invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
:cond_3b
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_53
iget-object v4, p0, Lco/vine/android/util/ContactsHelper;->mFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const-string v5, "phone"
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/telephony/TelephonyManager;
invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
move-result-object v2
:cond_53
iget-object v4, p0, Lco/vine/android/util/ContactsHelper;->mListener:Lco/vine/android/util/ContactsHelper$ContactHelperListener;
invoke-interface {v4, v2}, Lco/vine/android/util/ContactsHelper$ContactHelperListener;->onPhoneNumberLoaded(Ljava/lang/String;)V
goto :goto_7
nop
:pswitch_data_5a
.packed-switch 0x1
:pswitch_8
:pswitch_20
.end packed-switch
.end method
.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Landroid/database/Cursor;
invoke-virtual {p0, p1, p2}, Lco/vine/android/util/ContactsHelper;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
return-void
.end method
.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
.registers 2
return-void
.end method