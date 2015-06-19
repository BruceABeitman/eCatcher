.class final Lcom/bbm/ui/activities/cr;
.super Ljava/lang/Object;
.source "ChannelOfficeHoursSettingsActivity.java"

# interfaces
.implements Lcom/bbm/ui/ba;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;Ljava/util/Date;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Lcom/bbm/ui/activities/cv;

    move-result-object v0

    iget v1, v0, Lcom/bbm/ui/activities/cv;->a:I

    iget-object v0, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Lcom/bbm/ui/activities/cv;

    move-result-object v0

    iget-object v2, v0, Lcom/bbm/ui/activities/cv;->b:Lcom/bbm/ui/activities/cx;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->c(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->d(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/cw;

    sget-object v5, Lcom/bbm/ui/activities/cx;->a:Lcom/bbm/ui/activities/cx;

    if-ne v2, v5, :cond_59

    const-string v2, "startTime"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/ui/activities/cw;->d:Lcom/bbm/ui/DateTimePickerView;

    iget-object v1, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {p2}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setMinDateTime(Ljava/util/Date;)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    sget-object v5, Lcom/bbm/ui/activities/cx;->b:Lcom/bbm/ui/activities/cx;

    if-ne v2, v5, :cond_58

    const-string v2, "endTime"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b(Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/ui/activities/cw;->c:Lcom/bbm/ui/DateTimePickerView;

    iget-object v1, p0, Lcom/bbm/ui/activities/cr;->a:Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;

    invoke-static {p2}, Lcom/bbm/ui/activities/ChannelOfficeHoursSettingsActivity;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setMaxDateTime(Ljava/util/Date;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_58

    :catch_77
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_58
.end method
