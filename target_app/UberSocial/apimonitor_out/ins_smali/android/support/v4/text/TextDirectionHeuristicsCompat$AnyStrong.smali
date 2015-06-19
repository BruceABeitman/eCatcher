.class  Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;
.source "SourceFile"
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
.registers 9
const/4 v2, 0x0
const/4 v1, 0x1
add-int v3, p2, p3
move v0, v2
:goto_5
if-ge p2, v3, :cond_27
invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v4
invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B
move-result v4
#calls: Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlText(I)I
invoke-static {v4}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->access$200(I)I
move-result v4
packed-switch v4, :pswitch_data_32
:goto_16
add-int/lit8 p2, p2, 0x1
goto :goto_5
:pswitch_19
iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z
if-eqz v0, :cond_1f
move v1, v2
:goto_1e
:cond_1e
return v1
:cond_1f
move v0, v1
goto :goto_16
:pswitch_21
iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z
if-eqz v0, :cond_1e
move v0, v1
goto :goto_16
:cond_27
if-eqz v0, :cond_2f
iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z
if-nez v0, :cond_1e
move v1, v2
goto :goto_1e
:cond_2f
const/4 v1, 0x2
goto :goto_1e
nop
:pswitch_data_32
.packed-switch 0x0
:pswitch_19
:pswitch_21
.end packed-switch
.end method