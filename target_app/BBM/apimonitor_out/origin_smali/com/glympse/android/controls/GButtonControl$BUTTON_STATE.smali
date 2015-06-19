.class public final enum Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;
.super Ljava/lang/Enum;
.source "GButtonControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

.field public static final enum ACTIVE:Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

.field public static final enum NORMAL:Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->NORMAL:Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    new-instance v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->ACTIVE:Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    sget-object v1, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->NORMAL:Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->ACTIVE:Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->$VALUES:[Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;
    .registers 2

    const-class v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    return-object v0
.end method

.method public static values()[Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;
    .registers 1

    sget-object v0, Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->$VALUES:[Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    invoke-virtual {v0}, [Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/glympse/android/controls/GButtonControl$BUTTON_STATE;

    return-object v0
.end method
