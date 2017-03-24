import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from './app';
import Home from './home';
import SessionFormContainer from './session_form/session_form_container';
import GuidesIndexContainer from './guide/guides_index_container';
import GuideFormContainer from './guide/guide_form_container';
import GuideShowContainer from './guide/guide_show_container';
import SearchBarContainer from './search/search_bar_container';

const Root = ({ store }) => {

const _ensureLoggedIn = (nextState, replace) => {
  const currentUser = store.getState().session.currentUser;
  if (!currentUser) {
    replace('/login');
  }
};

const _redirectIfLoggedIn = (nextState, replace) => {
  const currentUser = store.getState().session.currentUser;
  if (currentUser) {
    replace('/');
  }
};

  return (
    <Provider store={store}>
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
          <IndexRoute component={Home} />
          <Route path="/login" component={ SessionFormContainer } onEnter={_redirectIfLoggedIn} />
          <Route path="/signup" component={ SessionFormContainer } onEnter={_redirectIfLoggedIn} />
          <Route path="/guides" component={ GuidesIndexContainer } />
          <Route path="/guides/new" component={ GuideFormContainer } onEnter={_ensureLoggedIn} />
          <Route path="/guides/:guideId" component={ GuideShowContainer } />
          <Route path="/guides/:guideId/edit" component={ GuideFormContainer } />
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
