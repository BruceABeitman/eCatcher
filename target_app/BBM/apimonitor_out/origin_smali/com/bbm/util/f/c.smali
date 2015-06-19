.class final Lcom/bbm/util/f/c;
.super Ljava/lang/Object;
.source "TimeRangeFormatter.java"

# interfaces
.implements Lcom/bbm/util/f/i;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;JJ)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x101

    invoke-static {p1, p2, p3, v0}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
