.class  Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"
.implements Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;
.field public static final INSTANCE_LTR:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
.field public static final INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
.field private final mLookForRtl:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
const/4 v1, 0x1
invoke-direct {v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V
sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
const/4 v1, 0x0
invoke-direct {v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V
sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_LTR:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
return-void
.end method
.method private constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z
return-void
.end method
.method public checkRtl(Ljava/lang/CharSequence;II)I
.registers 10
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v1, 0x0
move v2, p2
add-int v0, p2, p3
:goto_6
if-ge v2, v0, :cond_28
invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
invoke-static {v5}, Ljava/lang/Character;->getDirectionality(C)B
move-result v5
#calls: Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlText(I)I
invoke-static {v5}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->access$200(I)I
move-result v5
packed-switch v5, :pswitch_data_32
:goto_17
add-int/lit8 v2, v2, 0x1
goto :goto_6
:pswitch_1a
iget-boolean v5, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z
if-eqz v5, :cond_20
move v3, v4
:goto_1f
:cond_1f
return v3
:cond_20
const/4 v1, 0x1
goto :goto_17
:pswitch_22
iget-boolean v5, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z
if-eqz v5, :cond_1f
const/4 v1, 0x1
goto :goto_17
:cond_28
if-eqz v1, :cond_30
iget-boolean v5, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z
if-nez v5, :cond_1f
move v3, v4
goto :goto_1f
:cond_30
const/4 v3, 0x2
goto :goto_1f
:pswitch_data_32
.packed-switch 0x0
:pswitch_1a
:pswitch_22
.end packed-switch
.end method