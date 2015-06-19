.class final Lcom/mixpanel/android/surveys/SurveyActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/surveys/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/surveys/SurveyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mixpanel/android/surveys/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mixpanel/android/surveys/SurveyActivity$1;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity$1;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-static {v0, p1, p2}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(Lcom/mixpanel/android/surveys/SurveyActivity;Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity$1;->a:Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-static {v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    return-void
.end method
