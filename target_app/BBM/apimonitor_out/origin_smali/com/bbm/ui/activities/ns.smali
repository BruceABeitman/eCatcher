.class final Lcom/bbm/ui/activities/ns;
.super Ljava/lang/Object;
.source "GroupEventsAddActivity.java"

# interfaces
.implements Lcom/bbm/ui/ba;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventsAddActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventsAddActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ns;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;Ljava/util/Date;)V
    .registers 9

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bbm/ui/activities/ns;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/bbm/ui/activities/ns;->a:Lcom/bbm/ui/activities/GroupEventsAddActivity;

    iget-object v4, v4, Lcom/bbm/ui/activities/GroupEventsAddActivity;->g:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v4}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    return-void
.end method
