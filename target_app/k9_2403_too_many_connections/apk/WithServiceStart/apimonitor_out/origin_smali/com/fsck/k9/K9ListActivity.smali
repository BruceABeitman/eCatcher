.class public Lcom/fsck/k9/K9ListActivity;
.super Landroid/app/ListActivity;
.source "K9ListActivity.java"


# instance fields
.field private mDateFormat:Ljava/text/DateFormat;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private setupFormats()V
    .registers 2

    invoke-static {p0}, Lcom/fsck/k9/activity/DateFormatter;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/K9ListActivity;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/K9ListActivity;->mTimeFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/text/DateFormat;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/K9ListActivity;->mDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getTimeFormat()Ljava/text/DateFormat;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/K9ListActivity;->mTimeFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/K9ListActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/fsck/k9/K9ListActivity;->setupFormats()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-direct {p0}, Lcom/fsck/k9/K9ListActivity;->setupFormats()V

    return-void
.end method
