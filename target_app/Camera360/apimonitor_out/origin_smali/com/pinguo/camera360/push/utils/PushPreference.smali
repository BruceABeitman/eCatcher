.class public Lcom/pinguo/camera360/push/utils/PushPreference;
.super Ljava/lang/Object;
.source "PushPreference.java"


# static fields
.field public static final IMEI:Ljava/lang/String; = "random_imei"

.field public static final PUSH_DATA:Ljava/lang/String; = "push_data"

.field public static final PUSH_FILE_NAME:Ljava/lang/String; = "push"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->sp:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "push"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->sp:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public commit()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/push/utils/PushPreference;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
