.class public Lcom/facebook/katana/service/api/FacebookAffiliation;
.super Ljava/lang/Object;
.source "FacebookAffiliation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/FacebookAffiliation$FacebookAffiliationQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookAffiliation"

.field protected static mFacebookEmployee:Z

.field protected static mFacebookEmployeeAccurate:Z

.field protected static mFacebookEmployeeEver:Z

.field protected static mFacebookEmployeeEverAccurate:Z

.field protected static mRequestLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static mStatusSynced:Z

.field protected static mSuppressToast:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mRequestLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowed()Z
    .registers 1

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEverAccurate:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEver:Z

    if-nez v0, :cond_12

    :cond_8
    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeAccurate:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployee:Z

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static invalidateEmployeeBit(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "FacebookAffiliation"

    const-string v1, "employee accurate bit cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeAccurate:Z

    sput-boolean v2, Lcom/facebook/katana/service/api/FacebookAffiliation;->mSuppressToast:Z

    const-string v0, "key=\"is_employee\""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static maybeToast(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mSuppressToast:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "This beta build is only enabled for employees."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sput-boolean v2, Lcom/facebook/katana/service/api/FacebookAffiliation;->mSuppressToast:Z

    :cond_14
    return-void
.end method

.method public static rejected()Z
    .registers 3

    const-string v0, "FacebookAffiliation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rejected -- ever accurate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEverAccurate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ever:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "emp accurat:e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeAccurate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "emp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployee:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEverAccurate:Z

    if-eqz v0, :cond_4c

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEver:Z

    if-nez v0, :cond_4c

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeAccurate:Z

    if-eqz v0, :cond_4c

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployee:Z

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    :goto_4b
    return v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method public static requestCompleted()V
    .registers 2

    sget-object v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mRequestLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static setIsEmployee(Landroid/content/Context;Z)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "FacebookAffiliation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "employee bit set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployee:Z

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEverAccurate:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEver:Z

    if-nez v0, :cond_41

    :cond_1f
    if-nez p1, :cond_41

    const/4 v0, 0x0

    :goto_22
    sput-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEver:Z

    sput-boolean v3, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeAccurate:Z

    sput-boolean v3, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEverAccurate:Z

    const-string v0, "is_employee"

    sget-boolean v1, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployee:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "seen_employee"

    sget-boolean v1, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEver:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    sput-boolean v3, Lcom/facebook/katana/service/api/FacebookAffiliation;->mStatusSynced:Z

    return-void

    :cond_41
    move v0, v3

    goto :goto_22
.end method

.method public static shouldInitiateRequest()Z
    .registers 3

    sget-object v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mRequestLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public static syncStatus(Landroid/content/Context;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/KeyValueProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/provider/KeyValueManager;->PROJECTION:[Ljava/lang/String;

    const-string v3, "key IN(\"is_employee\",\"seen_employee\")"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_16
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1f
    sput-boolean v9, Lcom/facebook/katana/service/api/FacebookAffiliation;->mStatusSynced:Z

    return-void

    :cond_22
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "is_employee"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployee:Z

    sput-boolean v9, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeAccurate:Z

    :cond_3b
    :goto_3b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_16

    :cond_3f
    const-string v0, "seen_employee"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEver:Z

    sput-boolean v9, Lcom/facebook/katana/service/api/FacebookAffiliation;->mFacebookEmployeeEverAccurate:Z

    goto :goto_3b
.end method

.method public static synced()Z
    .registers 1

    sget-boolean v0, Lcom/facebook/katana/service/api/FacebookAffiliation;->mStatusSynced:Z

    return v0
.end method
