.class public final Lcom/instagram/n/g/a;
.super Ljava/lang/Object;
.source "TimespanUtils.java"
.method public static a(D)D
.registers 4
invoke-static {}, Lcom/instagram/n/g/a;->a()J
move-result-wide v0
long-to-double v0, v0
sub-double/2addr v0, p0
return-wide v0
.end method
.method private static a()J
.registers 4
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
return-wide v0
.end method
.method public static a(Landroid/content/Context;D)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
invoke-static {p0, p1, p2, v0}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;DZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;DZ)Ljava/lang/String;
.registers 16
const-wide/high16 v10, 0x4038
const-wide/high16 v8, 0x401c
const-wide/high16 v0, 0x3ff0
const-wide/high16 v6, 0x404e
invoke-static {}, Lcom/instagram/n/g/a;->a()J
move-result-wide v2
long-to-double v2, v2
sub-double/2addr v2, p1
const-wide/high16 v4, -0x3fb2
cmpg-double v4, v2, v4
if-gez v4, :cond_17
const-string v0, ""
:goto_16
return-object v0
:cond_17
cmpg-double v4, v2, v0
if-gez v4, :cond_6f
:goto_1b
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
cmpg-double v2, v0, v6
if-gez v2, :cond_2f
sget v2, Lcom/instagram/n/g/c;->a:I
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-static {p0, v2, v0, p3}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
goto :goto_16
:cond_2f
div-double/2addr v0, v6
cmpg-double v2, v0, v6
if-gez v2, :cond_40
sget v2, Lcom/instagram/n/g/c;->b:I
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-static {p0, v2, v0, p3}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
goto :goto_16
:cond_40
div-double/2addr v0, v6
cmpg-double v2, v0, v10
if-gez v2, :cond_51
sget v2, Lcom/instagram/n/g/c;->c:I
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-static {p0, v2, v0, p3}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
goto :goto_16
:cond_51
div-double/2addr v0, v10
cmpg-double v2, v0, v8
if-gez v2, :cond_62
sget v2, Lcom/instagram/n/g/c;->d:I
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-static {p0, v2, v0, p3}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
goto :goto_16
:cond_62
div-double/2addr v0, v8
sget v2, Lcom/instagram/n/g/c;->e:I
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-static {p0, v2, v0, p3}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
goto :goto_16
:cond_6f
move-wide v0, v2
goto :goto_1b
.end method
.method private static a(Landroid/content/Context;II)Ljava/lang/String;
.registers 7
const/4 v2, 0x1
const/4 v3, 0x0
sget-object v0, Lcom/instagram/n/g/b;->a:[I
add-int/lit8 v1, p1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_56
sget v0, Lcom/facebook/az;->weeks_abbreviation_with_placeholder:I
new-array v1, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_19
return-object v0
:pswitch_1a
sget v0, Lcom/facebook/az;->seconds_abbreviation_with_placeholder:I
new-array v1, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_19
:pswitch_29
sget v0, Lcom/facebook/az;->minutes_abbreviation_with_placeholder:I
new-array v1, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_19
:pswitch_38
sget v0, Lcom/facebook/az;->hours_abbreviation_with_placeholder:I
new-array v1, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_19
:pswitch_47
sget v0, Lcom/facebook/az;->days_abbreviation_with_placeholder:I
new-array v1, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_19
:pswitch_data_56
.packed-switch 0x1
:pswitch_1a
:pswitch_29
:pswitch_38
:pswitch_47
.end packed-switch
.end method
.method private static a(Landroid/content/Context;IIZ)Ljava/lang/String;
.registers 5
if-eqz p3, :cond_7
invoke-static {p0, p1, p2}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;II)Ljava/lang/String;
move-result-object v0
:goto_6
return-object v0
:cond_7
invoke-static {p0, p1, p2}, Lcom/instagram/n/g/a;->b(Landroid/content/Context;II)Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public static a(Landroid/content/Context;J)Ljava/lang/String;
.registers 6
long-to-double v0, p1
const/4 v2, 0x0
invoke-static {p0, v0, v1, v2}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;DZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Landroid/content/Context;II)Ljava/lang/String;
.registers 8
const/4 v2, 0x1
const/4 v4, 0x0
sget-object v0, Lcom/instagram/n/g/b;->a:[I
add-int/lit8 v1, p1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_6a
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/ax;->x_weeks_ago:I
new-array v2, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_1d
return-object v0
:pswitch_1e
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/ax;->x_seconds_ago:I
new-array v2, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:pswitch_31
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/ax;->x_minutes_ago:I
new-array v2, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:pswitch_44
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/ax;->x_hours_ago:I
new-array v2, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:pswitch_57
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/ax;->x_days_ago:I
new-array v2, v2, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:pswitch_data_6a
.packed-switch 0x1
:pswitch_1e
:pswitch_31
:pswitch_44
:pswitch_57
.end packed-switch
.end method