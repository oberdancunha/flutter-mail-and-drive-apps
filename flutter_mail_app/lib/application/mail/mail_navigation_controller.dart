class MailNavigationController {
  int adjustInitialDataByMailsTotal(int mailsTotal, int initialData) =>
      initialData > mailsTotal ? mailsTotal : initialData;

  int adjustLastDataNavigationPerPage(int dataPerPage, int lastData) =>
      lastData < dataPerPage ? dataPerPage : lastData;

  int adjustLastData(int mailsTotal, int dataPerPage, int lastData) {
    final int adjustLastDataNavigationAvailable = _adjustLastDataByMailsTotal(
      mailsTotal,
      lastData,
    );

    return _adjustLastDataByMailsTotalOrDataPerPage(
      mailsTotal,
      dataPerPage,
      adjustLastDataNavigationAvailable,
    );
  }

  int _adjustLastDataByMailsTotal(int mailsTotal, int lastData) =>
      lastData > mailsTotal ? mailsTotal : lastData;

  int _adjustLastDataByMailsTotalOrDataPerPage(
    int mailsTotal,
    int dataPerPage,
    int lastData,
  ) =>
      lastData < mailsTotal && _isMailEmptyOrIsLastDataNotEndingPagination(lastData, dataPerPage)
          ? mailsTotal
          : lastData;

  bool _isMailEmptyOrIsLastDataNotEndingPagination(int lastData, int dataPerPage) =>
      lastData == 0 || lastData % dataPerPage != 0;
}
