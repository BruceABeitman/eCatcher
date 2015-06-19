.class public final Lcom/bbm/compat/maps/a;
.super Ljava/lang/Object;
.source "BbmMapCompat.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bbm/compat/maps/a;->a:Z

    sput-boolean v0, Lcom/bbm/compat/maps/a;->b:Z

    :try_start_5
    const-string v0, "com.mapquest.android.maps.MapView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bbm/compat/maps/a;->a:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_18

    :goto_d
    :try_start_d
    const-string v0, "com.google.android.maps.MapView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bbm/compat/maps/a;->b:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15

    :catch_18
    move-exception v0

    goto :goto_d
.end method

.method public static a(Landroid/app/Activity;)Lcom/bbm/compat/maps/c;
    .registers 2

    sget-boolean v0, Lcom/bbm/compat/maps/a;->b:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/bbm/compat/maps/GoogleMapView;

    invoke-direct {v0, p0}, Lcom/bbm/compat/maps/GoogleMapView;-><init>(Landroid/content/Context;)V

    :goto_9
    return-object v0

    :cond_a
    sget-boolean v0, Lcom/bbm/compat/maps/a;->a:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/bbm/compat/maps/MapQuestMapView;

    invoke-direct {v0, p0}, Lcom/bbm/compat/maps/MapQuestMapView;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/bbm/compat/maps/a;->b:Z

    return v0
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lcom/bbm/compat/maps/a;->a:Z

    return v0
.end method
