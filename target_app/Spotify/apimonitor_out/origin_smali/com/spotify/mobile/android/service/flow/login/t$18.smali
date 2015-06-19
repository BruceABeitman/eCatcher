.class final Lcom/spotify/mobile/android/service/flow/login/t$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/login/t;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->b(Lcom/spotify/mobile/android/service/flow/login/t;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/aa;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->d(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/service/flow/login/aa;->a(Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$18;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->d(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method
