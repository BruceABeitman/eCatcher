.class public Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCacheSizeAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SettingsFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/SettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;->this$0:Lco/vine/android/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v1, p0, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v1}, Lco/vine/android/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/util/Util;->getCacheSize(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lco/vine/android/util/Util;->formatFileSize(Landroid/content/res/Resources;J)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    :goto_14
    return-object v1

    :catch_15
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lco/vine/android/SettingsFragment$GetCacheSizeAsyncTask;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mClearCacheValue:Landroid/widget/TextView;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$000(Lco/vine/android/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
