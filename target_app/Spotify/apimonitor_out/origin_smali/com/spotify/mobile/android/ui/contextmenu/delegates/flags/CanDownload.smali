.class public final enum Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

.field public static final enum b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

.field private static final synthetic c:[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    const-string v1, "Yes"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    const-string v1, "No"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    aput-object v1, v0, v3

    sput-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->c:[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->c:[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    return-object v0
.end method