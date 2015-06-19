.class public final Lcom/userzoom/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Luserzoom/com/UzSurveyActivity;


# direct methods
.method public constructor <init>(Luserzoom/com/UzSurveyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bt;->a:Luserzoom/com/UzSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/userzoom/bt;->a:Luserzoom/com/UzSurveyActivity;

    invoke-virtual {v0}, Luserzoom/com/UzSurveyActivity;->finish()V

    return-void
.end method
