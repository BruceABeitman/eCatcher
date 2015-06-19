.class Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# static fields
.field public static final INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 7

    const/4 v1, 0x2

    add-int v2, p2, p3

    move v0, v1

    :goto_4
    if-ge p2, v2, :cond_17

    if-ne v0, v1, :cond_17

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    #calls: Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I
    invoke-static {v0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->access$100(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_17
    return v0
.end method
