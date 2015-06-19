.class  Lcom/pinguo/lib/util/DebugProfile;
.super Ljava/lang/Object;
.source "DebugHelper.java"
.implements Ljava/lang/Comparable;
.field private static percent:Ljava/text/NumberFormat;
.field public inc:J
.field public incPercent:Ljava/lang/String;
.field public tag:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/DebugProfile;->percent:Ljava/text/NumberFormat;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;JD)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/lib/util/DebugProfile;->tag:Ljava/lang/String;
iput-wide p2, p0, Lcom/pinguo/lib/util/DebugProfile;->inc:J
new-instance v0, Ljava/text/DecimalFormat;
const-string/jumbo v1, "0.00#%"
invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/pinguo/lib/util/DebugProfile;->percent:Ljava/text/NumberFormat;
sget-object v0, Lcom/pinguo/lib/util/DebugProfile;->percent:Ljava/text/NumberFormat;
invoke-virtual {v0, p4, p5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/lib/util/DebugProfile;->incPercent:Ljava/lang/String;
return-void
.end method
.method public compareTo(Lcom/pinguo/lib/util/DebugProfile;)I
.registers 6
iget-wide v0, p1, Lcom/pinguo/lib/util/DebugProfile;->inc:J
iget-wide v2, p0, Lcom/pinguo/lib/util/DebugProfile;->inc:J
sub-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/pinguo/lib/util/DebugProfile;
invoke-virtual {p0, p1}, Lcom/pinguo/lib/util/DebugProfile;->compareTo(Lcom/pinguo/lib/util/DebugProfile;)I
move-result v0
return v0
.end method