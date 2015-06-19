.class public Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;
.super Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
.source "SwitchPreference.java"


# static fields
.field public static final VALUE_NONE:Ljava/lang/String; = "none"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->mDefault:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->mDefault:Ljava/lang/String;

    :goto_1c
    return-object v1

    :cond_1d
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->mDefaultValues:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_27
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, "on"

    goto :goto_1c

    :cond_34
    const-string/jumbo v1, "off"

    goto :goto_1c
.end method

.method public isOn()Z
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOn(Z)V
    .registers 3

    if-eqz p1, :cond_9

    const-string/jumbo v0, "on"

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SwitchPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string/jumbo v0, "off"

    goto :goto_5
.end method
